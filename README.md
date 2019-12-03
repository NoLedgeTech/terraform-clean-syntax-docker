# Terraform Clean Syntax Docker

Terraform v0.12.14 Terraform Clean Syntax warning cleaner in Docker

## Kudos

All kudos goes to [Martin Atkins](https://github.com/apparentlymart) and his [terraform-clean-syntax](https://github.com/apparentlymart/terraform-clean-syntax) repo

I only have put it in Docker

## Build Instructions

Run:

```sh
./build.sh
```

## Run instructions

The following command will convert all terraform `Warning: Interpolation-only expressions are deprecated` warnings:

```sh
cd <directory with .tf files>
terraform init
terraform plan # This shows warnings
docker run \
  --rm \
  -v $(pwd):/code \
  -t terraform-clean-syntax-docker
terraform plan # This does not show warnings :sweat_smile:
```

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, 
and the process for submitting pull requests.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
