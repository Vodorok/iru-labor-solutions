#!/bin/bash

lscpu | sed -En "s/CPU MHz:\s*//p"
