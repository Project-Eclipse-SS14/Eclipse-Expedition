# HASH: 8ed5580af75e2a766de6f27553bdc837135b68fdc318f68fa9872ed7df047b16
reagent-effect-condition-guidebook-total-damage =
    { $max ->
        [2147483648] тело имеет по крайней мере { NATURALFIXED($min, 2) } общего урона
       *[other]
            { $min ->
                [0] имеет не более { NATURALFIXED($max, 2) } общего урона
               *[other] имеет между { NATURALFIXED($min, 2) } и { NATURALFIXED($max, 2) } общего урона
            }
    }
# HASH: cffe541357a669f51ddac459f73bd6416319060ee4a61bb154c61c04b1c8244b
reagent-effect-condition-guidebook-total-hunger =
    { $max ->
        [2147483648] цель имеет по крайней мере { NATURALFIXED($min, 2) } общего голода
       *[other]
            { $min ->
                [0] цель имеет не более { NATURALFIXED($max, 2) } общего голода
               *[other] цель имеет между  { NATURALFIXED($min, 2) } и { NATURALFIXED($max, 2) } общего голода
            }
    }
# HASH: ef7d68eb0ac9005622635c9e3d7b243669639b0f842923a8ff4facc30d79b824
reagent-effect-condition-guidebook-reagent-threshold =
    { $max ->
        [2147483648] в кровеносной системе имеется по крайней мере { NATURALFIXED($min, 2) }ед. { $reagent }
       *[other]
            { $min ->
                [0] имеется не более { NATURALFIXED($max, 2) }ед. { $reagent }
               *[other] имеет между { NATURALFIXED($min, 2) }ед. и { NATURALFIXED($max, 2) }ед. { $reagent }
            }
    }
# HASH: 50eb67b7ffb83d130aba3e8ef63a04f083e779d7dc9b7aa6e07c39a884ed9824
reagent-effect-condition-guidebook-mob-state-condition = пациент в { $state }
# HASH: 96faf1f6ebb6a5bacd02758471493d0d204f8cb71a130f005b6e857336d9f01d
reagent-effect-condition-guidebook-job-condition = должность цели - { $job }
# HASH: ac30648e54d7ae64b9d64e8eb64f8d0a9a92277e07dd6812b15dfb0a6ce278cb
reagent-effect-condition-guidebook-solution-temperature =
    температура раствора составляет { $max ->
        [2147483648] не менее { NATURALFIXED($min, 2) }k
       *[other]
            { $min ->
                [0] не более { NATURALFIXED($max, 2) }k
               *[other] между { NATURALFIXED($min, 2) }k и { NATURALFIXED($max, 2) }k
            }
    }
# HASH: 86ee4214437a65fb4c6b4805c115bc0233988e268e54f8b0f98487bf6d9470fc
reagent-effect-condition-guidebook-body-temperature =
    температура тела составляет { $max ->
        [2147483648] не менее { NATURALFIXED($min, 2) }k
       *[other]
            { $min ->
                [0] не более { NATURALFIXED($max, 2) }k
               *[other] между { NATURALFIXED($min, 2) }k и { NATURALFIXED($max, 2) }k
            }
    }
# HASH: 2cda04e5c31d78cdeedc56eb2b2671b4022a0cbc1e52314954f70310d4cc6648
reagent-effect-condition-guidebook-organ-type =
    метаболизирующий орган { $shouldhave ->
        [true] это
       *[false] это не
    } { $name } орган
# HASH: da3745e7ccfa7de896156719ccf8465bfb72588db109514936936554604f1f77
reagent-effect-condition-guidebook-has-tag =
    цель { $invert ->
        [true] не имеет
       *[false] имеет
    } метку { $tag }
# HASH: fa3068e7feb2f603a9d5c96bba320b0d91cce7cbb1a9e4f7c970abdf7497da1a
reagent-effect-condition-guidebook-this-reagent = этот реагент
# HASH: 6c076cd5c5f3069866834a5b4aff894c5361ddfbaed36c33816dcac5e2c97adb
reagent-effect-condition-guidebook-breathing =
    the metabolizer is { $isBreathing ->
        [true] breathing normally
       *[false] suffocating
    }
# HASH: 00c8e9e12dacb699f153657777275f5e310b8de5afd2d4e45ea9a8b927273654
reagent-effect-condition-guidebook-internals =
    the metabolizer is { $usingInternals ->
        [true] using internals
       *[false] breathing atmospheric air
    }
