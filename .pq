[[[H‘Year-based Versioning (YearVer)’
]]]>>‘T‘‘‘*‘en’’‘ru[./ru]’’’’



><‘H(1)‘Year-based[[[>[https://zone.ni.com/reference/en-XX/help/370052AA-01/tshelp/infotopics/version/ <- google:‘"year-based"’]:‘year-based versioning’]]] Versioning
(YearVer)’’



The idea of YearVer is to specify version numbers in the form of `YYYY.M`,` YYYY.N`, `YYYY.N.n` or` YYYY.M.n` {
`YYYY` is a year
`М` is a month (a number from 1 to 12)
`N`/`n` is a sequential number (starting from 1)
}.


If you need 3 numbers separated by a dot [for example, as in npm {
```
npm ERR! Invalid version: "2021.2"
```
>[https://stackoverflow.com/a/27543014/2692494 <- google:‘npm ERR! Invalid version’]:‘
the version number can only be like `\d+\.\d+\.\d+`’
}], then simply use `2021.2.0` instead of `2021.2`.


Additional versions published in the same month, or {{

This means that when choosing the first strategy, the version number `2021.2.1` means ‘an additional/new version released in the same month as the main one [i.e. in February]’, while in the second strategy, the same version number means ‘the version that fixes the main version [`2021.2`] {also, the version `2021.2.1` itself may not have necessarily been released in February}’.

The second strategy allows the second digit in the version number to be an incremented number [representing a version within the given year], instead of the month. For example, this strategy is ‘followed by JetBrains’[https://www.jetbrains.com/clion/download/other.html].

‘Thus, YearVer (designating a version in the form of `YYYY.X` and` YYYY.X.Z`) has 3 choices’{
1. For bug-free projects, `X` stands for the month of the given version release, and `Z` stands for the additional/new version number in the same month {however, it is recommended to release new versions no more than once a month}.
2. For projects with bugfixes, `X` stands for the month of the given version release, and `Z` is the version number [not necessarily released in the same month] that fixes the bugs of the version `YYYY.X` or `YYYY.X.(Z-1)`.
3. Similar to choice 2, only `X` is not the month, but a sequential number [starting from 1] within the corresponding year. [This strategy is followed by JetBrains.]
}

}} those fixing bugs of the main version {you should decide and choose the most appropriate strategy depending on your project {there are projects {usually small in size, whereas in terms of the form they are usually command line utilities [and projects having nearly 100% code coverage]} where each version must/can be bug-free [{obviously, such projects do not need bug-fixing versions}]}}, shall be numbered `2021.2.1`, `2021.2.2`, and so on.


‘What's wrong with SemVer?’{
SemVer[https://semver.org] is a good option for versions below 1.0.0 and for certain project types. However, many SemVer provisions raise questions, including the condition of the major version increment. For example, if you change the name of an API function, will that be enough to increase the major version?

You can find other arguments against SemVer here[https://sedimental.org/designing_a_version.html <- https://calver.org].
}


‘What's wrong with CalVer?’{
The CalVer specification is too vague {calver.org fails to give any specific recommendations on a calendar versioning scheme to choose; it simply describes the schemes already used in various projects, without highlighting them in any way}.
But, of course, YearVer can be considered as a special case of CalVer[https://calver.org].
}


If you want to provide a feedback, please ‘open an issue on GitHub’[https://github.com/yearver/yearver/issues].
