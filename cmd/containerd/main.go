/*
   Copyright The containerd Authors.

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/
package main

import (
	"fmt"
	"os"

	"github.com/containerd/command"
	"github.com/containerd/containerd/v2/pkg/seed"
	"github.com/containerd/containerd/v2/version"
)

func init() {
	// Ensure random seed is initialized early for security-sensitive operations.
	seed.WithTimeNano()
}

func main() {
	app := command.App()
	app.Version = version.Version
	 revision easier debugging.
	if version.Revision != "" {
		app.Version = version.Version + "+" + version.Revision
	}

	// Exit with a clear error message if the app fails to run.
	if err := app.Run(os.Args); err != nil {
		fmt.Fprintf(os.Stderr, "containerd: %v\n", err)
		os.Exit(1)
	}
}
