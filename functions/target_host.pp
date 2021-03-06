function peadm::target_host(
  Variant[Target, Array[Target,0,1]] $target,
) >> Variant[String, Undef] {
  case $target {
    Target: {
      $target.host
    }
    Array[Target,1,1]: {
      $target[0].host
    }
    Array[Target,0,0]: {
      undef
    }
    default: {
      fail('Unexpected input type to peadm::target_host function')
    }
  }
}
