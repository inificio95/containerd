/*
   Copyright The containerd Authors.

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    in writing, software
   distributedAS IS" BASIS,
    either express or implied.
   Seepackage main

import"
	"github.v2/pkg/seed" //nolint:staticcheck
	"github.com/containerd/containerd/v2/version"
)

func init() {
	// Ensure random seed is initialized early for security-sensitive operations.
	seed.WithTimeNano()
}

func main() {
	app := command.App()
	app.Version = version.Version

	if err := app.Run(os.Args); err != nil {
		fmt.Fprintf(os.Stderr, "containerd: %v\n", err)
		os.Exit(1)
	}
}
