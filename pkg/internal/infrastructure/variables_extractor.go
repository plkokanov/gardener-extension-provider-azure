// Copyright (c) 2019 SAP SE or an SAP affiliate company. All rights reserved. This file is licensed under the Apache Software License, v. 2 except as noted otherwise in the LICENSE file
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package infrastructure

import (
	"context"

	"github.com/gardener/gardener/extensions/pkg/terraformer"
)

type VariablesExtractor interface {
	GetOutputVariables(context.Context, ...string) (map[string]string, error)
}

type fromTerraformExtrator struct {
	tf terraformer.Terraformer
}

func NewFromTerraformExtractor(tf terraformer.Terraformer) VariablesExtractor {
	return &fromTerraformExtrator{tf: tf}
}

func (e *fromTerraformExtrator) GetOutputVariables(ctx context.Context, outputKeys ...string) (map[string]string, error) {
	return e.tf.GetStateOutputVariables(ctx, outputKeys...)
}

type fromStateExtrator struct {
	state []byte
}

func NewFromStateExtractor(state []byte) VariablesExtractor {
	return &fromStateExtrator{state: state}
}

func (e *fromStateExtrator) GetOutputVariables(_ context.Context, outputKeys ...string) (map[string]string, error) {
	return terraformer.GetOutputVariablesFromState(e.state, outputKeys...)
}
