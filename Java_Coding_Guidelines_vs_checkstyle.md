# Comparison: Java Coding Guidelines ↔ `ci/checkstyle.xml`

Timestamp: 20260924_111528

**Documents compared** (links are pinned to the commits analysed, so that line numbers and anchors remain stable):

| Document | Branch | Commit | Link |
|---|---|---|---|
| Java Coding Guidelines, version 1.0.0 | `main` | `ee8313a` | [Java_Coding_Guidelines.md](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md) |
| Checkstyle configuration | `ci` | `d28fb17` | [ci/checkstyle.xml](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml) |

**Method.**

1. Every normative statement of the guideline (sections 2 to 7) was mapped to the Checkstyle module(s) that enforce it, if any.
2. Every module and every property in `checkstyle.xml` was mapped back to a guideline statement, if any.
3. Where the effect of a module depends on defaults that the file does not state, the behaviour was verified empirically. This was done by running `checkstyle.xml` unchanged, with the Checkstyle **9.3** engine, against purpose-built probe sources. Version 9.3 is the engine bundled with `maven-checkstyle-plugin` 3.6.0, which the pipeline uses (see R73). Findings confirmed this way are marked *Verified*.
4. Sections 1, 1.1 and 1.2 of the guideline contain definitions and non-normative text. They are cited only where they matter for the comparison.

**Classification legend.**

| Label | Meaning |
|---|---|
| EQUIVALENT | The check enforces the rule as written; no material difference found. |
| PARTIAL | The check enforces a subset of the rule; the rest is unchecked. |
| DIVERGENT | For at least one concrete construct, the guideline and Checkstyle reach opposite verdicts (Checkstyle is stricter or more lenient). |
| GUIDELINE ONLY | The rule has no corresponding module in `checkstyle.xml`. |
| CHECKSTYLE ONLY | The module or property has no corresponding rule in the guideline. |
| INFORMATIVE | Context that affects how the two documents should be read. |

**Summary.** 73 remarks. EQUIVALENT: 17, PARTIAL: 23, DIVERGENT: 15, GUIDELINE ONLY: 14, CHECKSTYLE ONLY: 6, INFORMATIVE: 3 (a remark may carry two labels, e.g. PARTIAL · DIVERGENT).

**Traceability: `checkstyle.xml` → remarks.** Every entry in the file is covered, which confirms the Checkstyle → guideline direction is complete. The container modules `Checker` (L19) and `TreeWalker` (L49) have no rule semantics of their own.

| Line(s) | Module / property | Remark(s) |
|---|---|---|
| [6–17](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L6-L17) | Header comment | R01 |
| [20](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L20) | `charset` | R07 |
| [22](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L22) | `severity` | R02 |
| [24](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L24) | `fileExtensions` | R03 |
| [27–29](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L27-L29) | `BeforeExecutionExclusionFileFilter` | R04 |
| [31–35](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L31-L35) | `SuppressionFilter` | R05 |
| [39–41](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L39-L41) | `FileTabCharacter` | R08 |
| [43–47](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L43-L47) | `LineLength` | R13, R15, R26, R49 |
| [50](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L50) | `OuterTypeFilename` | R06 |
| [51–57](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L51-L57) | `IllegalTokenText` | R09 |
| [58–62](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L58-L62) | `AvoidEscapedUnicodeCharacters` | R10 |
| [63](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L63) | `AvoidStarImport` | R14 |
| [64](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L64) | `OneTopLevelClass` | R18 |
| [65–67](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L65-L67) | `NoLineWrap` | R13, R15 |
| [68–72](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L68-L72) | `EmptyBlock` | R23 |
| [73–76](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L73-L76) | `NeedBraces` | R21 |
| [77–84](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L77-L84) | `LeftCurly` | R22, R33 |
| [85–90](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L85-L90) | `RightCurly` (`RightCurlySame`) | R22 |
| [91–98](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L91-L98) | `RightCurly` (`RightCurlyAlone`) | R22 |
| [99–104](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L99-L104) | `SuppressionXpathSingleFilter` | R22, R23 |
| [105–109](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L105-L109) | `WhitespaceAfter` | R30 |
| [110–129](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L110-L129) | `WhitespaceAround` | R23, R30 |
| [130](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L130) | `OneStatementPerLine` | R25 |
| [131](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L131) | `MultipleVariableDeclarations` | R34 |
| [132](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L132) | `ArrayTypeStyle` | R37 |
| [133](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L133) | `MissingSwitchDefault` | R40 |
| [134](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L134) | `FallThrough` | R39, R41 |
| [135](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L135) | `UpperEll` | R48 |
| [136](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L136) | `ModifierOrder` | R47 |
| [137–143](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L137-L143) | `EmptyLineSeparator` | R11, R29 |
| [144–148](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L144-L148) | `SeparatorWrap` (DOT) | R27 |
| [149–153](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L149-L153) | `SeparatorWrap` (COMMA) | R27 |
| [154–159](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L154-L159) | `SeparatorWrap` (ELLIPSIS) | R28 |
| [160–165](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L160-L165) | `SeparatorWrap` (ARRAY_DECLARATOR) | R28 |
| [166–170](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L166-L170) | `SeparatorWrap` (METHOD_REF) | R27 |
| [171–175](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L171-L175) | `PackageName` | R50, R51 |
| [176–181](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L176-L181) | `TypeName` | R50, R52 |
| [182–186](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L182-L186) | `MemberName` | R50, R55 |
| [187–191](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L187-L191) | `ParameterName` | R56 |
| [192–196](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L192-L196) | `LambdaParameterName` | R56 |
| [197–201](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L197-L201) | `CatchParameterName` | R56 |
| [202–206](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L202-L206) | `LocalVariableName` | R57 |
| [207–211](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L207-L211) | `PatternVariableName` | R57 |
| [212–216](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L212-L216) | `ClassTypeParameterName` | R58 |
| [217–221](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L217-L221) | `RecordComponentName` | R59 |
| [222–226](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L222-L226) | `RecordTypeParameterName` | R58 |
| [227–231](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L227-L231) | `MethodTypeParameterName` | R58 |
| [232–236](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L232-L236) | `InterfaceTypeParameterName` | R58 |
| [237](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L237) | `NoFinalizer` | R64 |
| [238–247](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L238-L247) | `GenericWhitespace` | R30 |
| [248–257](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L248-L257) | `Indentation` (commented out) | R24 |
| [258–265](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L258-L265) | `AbbreviationAsWordInName` | R57, R60 |
| [266](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L266) | `NoWhitespaceBeforeCaseDefaultColon` | R30 |
| [267](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L267) | `OverloadMethodsDeclarationOrder` | R20 |
| [268](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L268) | `VariableDeclarationUsageDistance` | R35 |
| [269–274](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L269-L274) | `CustomImportOrder` | R16 |
| [275–279](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L275-L279) | `MethodParamPad` | R27, R30 |
| [280–285](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L280-L285) | `NoWhitespaceBefore` | R30 |
| [286–293](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L286-L293) | `ParenPad` | R30 |
| [294–300](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L294-L300) | `OperatorWrap` | R27 |
| [301–306](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L301-L306) | `AnnotationLocation` (`AnnotationLocationMostCases`) | R43 |
| [307–311](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L307-L311) | `AnnotationLocation` (`AnnotationLocationVariables`) | R44 |
| [312](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L312) | `NonEmptyAtclauseDescription` | R67 |
| [313](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L313) | `InvalidJavadocPosition` | R71 |
| [314](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L314) | `JavadocTagContinuationIndentation` | R67 |
| [315–318](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L315-L318) | `SummaryJavadoc` | R68 |
| [319](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L319) | `JavadocParagraph` | R66 |
| [320](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L320) | `RequireEmptyLineBeforeBlockTagGroup` | R66 |
| [321–325](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L321-L325) | `AtclauseOrder` | R67 |
| [326–332](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L326-L332) | `JavadocMethod` | R70 |
| [333–339](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L333-L339) | `MissingJavadocMethod` | R69 |
| [340–346](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L340-L346) | `MissingJavadocType` | R69 |
| [347–351](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L347-L351) | `MethodName` | R50, R53 |
| [352](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L352) | `SingleLineJavadoc` | R65 |
| [353–355](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L353-L355) | `EmptyCatchBlock` | R62 |
| [356–358](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L356-L358) | `CommentsIndentation` | R45 |
| [360–364](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L360-L364) | `SuppressionXpathFilter` | R05 |

**Traceability: guideline → remarks.** Every normative section is covered, which confirms the guideline → Checkstyle direction is complete. Container headings (2, 2.3, 3.3, 3.4, 3.5, 4, 4.1, 4.6, 4.8, 4.8.2, 4.8.3, 4.8.5, 4.8.6, 5, 5.2, 6, 7, 7.1) and purely terminological or introductory text (1.1, the introductions of 4.5 and 4.8.4) contain no rules of their own and are therefore not listed.

| Section | Remark(s) | Section | Remark(s) |
|---|---|---|---|
| 1 / 1.2 | R01, R02, R03, R05 | 4.8.1 | R33 |
| 2.1 | R06 | 4.8.2.1 | R34 |
| 2.2 | R07 | 4.8.2.2 | R35 |
| 2.3.1 | R08 | 4.8.3.1 | R36 |
| 2.3.2 | R09 | 4.8.3.2 | R37 |
| 2.3.3 | R10 | 4.8.4.1 | R24, R38 |
| 3 | R04, R11 | 4.8.4.2 | R39 |
| 3.1 | R12 | 4.8.4.3 | R40 |
| 3.2 | R13, R72 | 4.8.4.4 | R41 |
| 3.3.1 | R14 | 4.8.5.1 | R42 |
| 3.3.2 | R15 | 4.8.5.2 / 4.8.5.3 | R43 |
| 3.3.3 | R16 | 4.8.5.4 / 4.8.5.5 | R44 |
| 3.3.4 | R17 | 4.8.6.1 | R45 |
| 3.4.1 | R18 | 4.8.6.2 | R46 |
| 3.4.2 | R19 | 4.8.7 | R04, R47 |
| 3.4.2.1 | R20 | 4.8.8 | R48 |
| 3.5.1 | R04 | 4.8.9 | R49 |
| 4.1.1 | R21 | 5.1 | R50 |
| 4.1.2 | R22 | 5.2.1 | R04, R51 |
| 4.1.3 | R23 | 5.2.2 | R52 |
| 4.2 | R24 | 5.2.3 | R53 |
| 4.3 | R25 | 5.2.4 | R54 |
| 4.4 | R26, R72 | 5.2.5 | R55 |
| 4.5.1 | R27, R28 | 5.2.6 | R56 |
| 4.5.2 | R24 | 5.2.7 | R57 |
| 4.6.1 | R29 | 5.2.8 | R58 |
| 4.6.2 | R30, R72 | 5.3 | R60 |
| 4.6.3 | R31 | 6.1 | R61 |
| 4.7 | R32 | 6.2 | R62 |
| | | 6.3 | R63 |
| | | 6.4 | R64 |
| | | 7.1.1 | R65 |
| | | 7.1.2 | R66 |
| | | 7.1.3 | R67 |
| | | 7.2 | R68 |
| | | 7.3, 7.3.1, 7.3.2, 7.3.4 | R69, R72 |

---

## R01 — Provenance of `checkstyle.xml`

| | Reference |
|---|---|
| Guideline | [§1 Introduction](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#1-introduction) |
| checkstyle.xml | [L6–L17 header comment](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L6-L17) |
| Classification | INFORMATIVE |

The header comment says the file "checks the Google coding conventions from Google Java Style". A diff against the upstream `google_checks.xml` of the Checkstyle 9.3 tag shows that the file is that upstream configuration with exactly four changes:

1. `FileTabCharacter/eachLine` is `false`; upstream it is `true` (see R08).
2. `LineLength/max` is `120`; upstream it is `100` (see R26).
3. The `Indentation` module is commented out (see R24).
4. Inside the commented-out block, `basicOffset` is `4`; upstream it is `2` (see R24).

The guideline is also derived from the Google Java Style Guide. It still names it explicitly in several places ("Google Style" in §4.6.3, §4.8.4.1, §4.8.4.3, §5.1 and §5.3). So the two documents share a common ancestor. Most differences below come from (a) what Checkstyle cannot decide mechanically, (b) Checkstyle defaults that the upstream configuration leaves in place, and (c) the four local changes above.

## R02 — Normative force of the rules vs. uniform severity `warning`

| | Reference |
|---|---|
| Guideline | [§1 Introduction](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#1-introduction), [§1.2 Conformance](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#12-conformance) |
| checkstyle.xml | [L22 `severity=warning`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L22) |
| Classification | DIVERGENT |

The guideline presents its rules as "hard-and-fast rules that we follow universally". §1.2 defines a source file as conformant "if and only if it adheres to the rules herein". The configuration assigns the single severity `warning` to every module, so no rule is distinguished as blocking. In the pipeline, `analyze.sh` also passes [`-Dcheckstyle.failOnViolation=false`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/analyze.sh#L81). That property only affects the `check` goal, not the `checkstyle` goal that is invoked, so it has no effect either way. Pass/fail is therefore decided solely by the Warnings NG quality gates. The guideline's binary notion of conformance has no counterpart in the configuration.

## R03 — Scope of analysed files

| | Reference |
|---|---|
| Guideline | [§1 Introduction](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#1-introduction) ("coding standards for Java™ source code") |
| checkstyle.xml | [L24 `fileExtensions`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L24), [L39–L41 `FileTabCharacter`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L39-L41), [L44 `LineLength/fileExtensions`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L44) |
| Classification | CHECKSTYLE ONLY |

The guideline covers Java source files only. The Checker is configured for `java, properties, xml`. `LineLength` is restricted to `java`, but `FileTabCharacter` is not, so a tab in a `.properties` or `.xml` file is reported although no guideline rule covers such files.

With `maven-checkstyle-plugin` 3.6.0 defaults, the files actually supplied to Checkstyle are:

- `**/*.java` from the main source directories;
- `**/*.properties` from the resources (`includeResources`/`includeTestResources` default `true`, `resourceIncludes` default `**/*.properties`).

`.xml` files are not supplied. Test sources are not analysed (`includeTestSourceDirectory` default `false`). As a result, guideline rules that concern test code (test class suffix `Test` in §5.2.2, underscores in JUnit test method names in §5.2.3) are outside the effective scope of the analysis.

## R04 — `module-info.java` excluded from analysis

| | Reference |
|---|---|
| Guideline | [§3 Source file structure](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#3-source-file-structure), [§3.5.1 Ordering and spacing of module directives](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#351-ordering-and-spacing-of-module-directives), [§4.8.7 Modifiers](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#487-modifiers), [§5.2.1 Package and module names](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#521-package-and-module-names) |
| checkstyle.xml | [L25–L29 `BeforeExecutionExclusionFileFilter`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L25-L29) |
| Classification | GUIDELINE ONLY |

All `module-info.java` files are excluded before any check runs. None of the following guideline rules about module declarations is therefore enforced:

- file structure of `module-info.java` (§3);
- ordering and blank-line separation of `requires`/`exports`/`opens`/`uses`/`provides` (§3.5.1);
- the modifier order `transitive static` on `requires` (§4.8.7);
- module naming (§5.2.1);
- module annotations (§4.8.5.2).

## R05 — Suppression filters

| | Reference |
|---|---|
| Guideline | [§1.2 Conformance](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#12-conformance) |
| checkstyle.xml | [L30–L35 `SuppressionFilter`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L30-L35), [L359–L364 `SuppressionXpathFilter`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L359-L364) |
| Classification | CHECKSTYLE ONLY |

Both filters load an optional external suppression file (`checkstyle-suppressions.xml`, `checkstyle-xpath-suppressions.xml`) with `optional=true`. The guideline has no waiver or exemption mechanism: §1.2 makes conformance absolute. No such suppression file exists on the `ci` branch at the analysed commit, so the filters currently have no effect. They are nevertheless a way to deviate from the guideline that the guideline does not describe. (`SuppressionXpathSingleFilter` at L99–L104 is a different, rule-specific filter; see R22/R23.)

## R06 — File name

| | Reference |
|---|---|
| Guideline | [§2.1 File name](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#21-file-name) |
| checkstyle.xml | [L50 `OuterTypeFilename`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L50) |
| Classification | EQUIVALENT |

`OuterTypeFilename` requires the file name to match the outer type name, which is the rule of §2.1.

## R07 — File encoding UTF-8

| | Reference |
|---|---|
| Guideline | [§2.2 File encoding: UTF-8](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#22-file-encoding-utf-8) |
| checkstyle.xml | [L20 `charset=UTF-8`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L20) |
| Classification | PARTIAL |

`charset` tells Checkstyle how to decode files; it is not a check. A file in a different encoding is decoded as UTF-8 and is not reported as non-conformant. The Maven plugin only applies its own `encoding` when `charset` is absent, so this value governs. The guideline rule is therefore assumed, not verified.

## R08 — Whitespace characters

| | Reference |
|---|---|
| Guideline | [§2.3.1 Whitespace characters](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#231-whitespace-characters) |
| checkstyle.xml | [L39–L41 `FileTabCharacter`, `eachLine=false`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L39-L41) |
| Classification | PARTIAL · DIVERGENT |

1. **Coverage.** §2.3.1 allows only the ASCII space (0x20) as a whitespace character anywhere in a source file, apart from line terminators. `FileTabCharacter` detects only the horizontal tab (0x09), anywhere in the file, including literals and comments. Other whitespace characters are not detected: form feed, vertical tab, U+00A0 no-break space, and other Unicode spaces. Item 1 of §2.3.1 (such characters must be escaped in literals and text blocks) is therefore enforced only for the tab.
2. **Reporting.** With `eachLine=false`, only the *first* tab in a file is reported. Upstream the value is `true`. A file indented entirely with tabs therefore produces one violation, not one per line. This is relevant to the issue-count thresholds of the quality gate.

## R09 — Special escape sequences

| | Reference |
|---|---|
| Guideline | [§2.3.2 Special escape sequences](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#232-special-escape-sequences) |
| checkstyle.xml | [L51–L57 `IllegalTokenText`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L51-L57) |
| Classification | PARTIAL |

§2.3.2 names nine characters that have a special escape sequence: `\b`, `\t`, `\n`, `\f`, `\r`, `\s`, `\"`, `\'`, `\\`. The pattern detects Unicode escapes `\u0009`, `\u000a`, `\u000c`, `\u000d`, `\u0022`, `\u0027`, `\u005c`, and octal escapes `\010`, `\011`, `\012`, `\014`, `\015`, `\042`, `\047`, `\134`. Differences:

1. **Backspace.** Octal `\010` is detected, but its Unicode form `\u0008` is not; the pattern has no `08` alternative. *Verified.*
2. **Space (`\s`).** Neither `\040` nor `\u0020` is in the pattern, so the `\s` escape is not enforced at all. *Verified for `\040`.*
3. **Multiple `u`.** Java permits `\uu0009`; the pattern requires exactly one `u`, so this form is not detected. *Verified.*
4. **Text blocks.** `tokens` is `STRING_LITERAL, CHAR_LITERAL`. Text block content (`TEXT_BLOCK_CONTENT`) is not inspected, although §2.3.1 and §2.3.2 also apply to text blocks.
5. **Moot alternatives.** In Java source, `\u000a` and `\u000d` are translated into real line terminators before lexing, which makes the literal a compile error. These two alternatives therefore never fire on compilable code.

## R10 — Non-ASCII characters

| | Reference |
|---|---|
| Guideline | [§2.3.3 Non-ASCII characters](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#233-non-ascii-characters) |
| checkstyle.xml | [L58–L62 `AvoidEscapedUnicodeCharacters`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L58-L62) |
| Classification | PARTIAL |

The configuration reproduces the example table of §2.3.3. *Verified:*

- `"\u03bcs"` without a comment is reported ("Poor").
- `"\u03bcs"; // mu s` is accepted (`allowByTailComment`).
- `'\ufeff'` is accepted (`allowNonPrintableEscapes`).

Not covered:

1. "Unicode escapes outside string literals and comments are strongly discouraged": the module inspects literals only. An escape in an identifier, e.g. `String \u0061b`, is not reported. *Verified.*
2. Any trailing comment satisfies `allowByTailComment`, even one that explains nothing. The guideline's criterion ("easier to read and understand") cannot be checked mechanically.
3. `allowEscapesForControlCharacters=true` accepts e.g. `\u0008` without comment. Combined with R09 item 1, `\u0008` is accepted by both modules, although §2.3.2 requires `\b`.

## R11 — Source file structure: order and blank lines

| | Reference |
|---|---|
| Guideline | [§3 Source file structure](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#3-source-file-structure) |
| checkstyle.xml | [L137–L143 `EmptyLineSeparator`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L137-L143) |
| Classification | PARTIAL |

§3 requires **exactly one** blank line between the sections that are present (licence, package, imports, class). `EmptyLineSeparator` requires *at least* one. Its default `allowMultipleEmptyLines=true` is not overridden, so two or more blank lines between sections are not reported. *Verified with two blank lines between `package` and `import`.* The order of the sections is enforced by the Java compiler, not by Checkstyle, except for the licence comment, which is not checked (R12).

## R12 — Licence and copyright header

| | Reference |
|---|---|
| Guideline | [§3.1 License and copyright information](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#31-license-and-copyright-information) |
| checkstyle.xml | — no module (a `Header`/`RegexpHeader` module would be the counterpart) |
| Classification | GUIDELINE ONLY |

None of the following is checked:

- presence and text of the GPLv3 header;
- the creation year in the first line;
- the prohibition of author information in the copyright notice;
- the requirement that authors are named in the Javadoc of the top-level class.

## R13 — Package declaration not line-wrapped

| | Reference |
|---|---|
| Guideline | [§3.2 Package declaration](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#32-package-declaration) |
| checkstyle.xml | [L65–L67 `NoLineWrap` (`PACKAGE_DEF`)](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L65-L67), [L46 `LineLength/ignorePattern` `^package.*`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L46) |
| Classification | EQUIVALENT |

Both parts of §3.2 are implemented: no line-wrapping, and the column limit does not apply. Note the internal inconsistency in §3.2 ("Column limit: 100"); see R72.

## R14 — No wildcard imports

| | Reference |
|---|---|
| Guideline | [§3.3.1 No wildcard imports](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#331-no-wildcard-imports) |
| checkstyle.xml | [L63 `AvoidStarImport`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L63) |
| Classification | EQUIVALENT |

With the defaults `allowClassImports=false`, `allowStaticMemberImports=false` and empty `excludes`, both static and non-static wildcard imports are reported, as §3.3.1 requires ("static or otherwise").

## R15 — Imports not line-wrapped

| | Reference |
|---|---|
| Guideline | [§3.3.2 No line-wrapping](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#332-no-line-wrapping) |
| checkstyle.xml | [L65–L67 `NoLineWrap` (`IMPORT`, `STATIC_IMPORT`)](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L65-L67), [L46 `LineLength/ignorePattern` `^import.*`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L46) |
| Classification | EQUIVALENT |

Both parts of §3.3.2 are implemented. `^import.*` also matches `import static`.

## R16 — Import ordering and spacing

| | Reference |
|---|---|
| Guideline | [§3.3.3 Ordering and spacing](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#333-ordering-and-spacing) |
| checkstyle.xml | [L269–L274 `CustomImportOrder`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L269-L274) |
| Classification | EQUIVALENT |

`STATIC###THIRD_PARTY_PACKAGE` with the default `thirdPartyPackageRegExp=.*` gives two groups: all static imports, then all non-static imports. `separateLineBetweenGroups=true` requires the blank line between them, and a blank line inside a group is reported. *Verified.* `sortImportsInGroupAlphabetically=true` sorts by imported *name* in ASCII order. *Verified:* `java.util.List` must precede `java.util.concurrent.Callable` ('L' < 'c'), and `org.holodeckb2b.example.A` must precede `org.holodeckb2b.example.A.C`, exactly as the note in §3.3.3 prescribes.

## R17 — No static import for classes

| | Reference |
|---|---|
| Guideline | [§3.3.4 No static import for classes](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#334-no-static-import-for-classes) |
| checkstyle.xml | — no module |
| Classification | GUIDELINE ONLY |

Telling a static nested class apart from a static member requires type resolution, which Checkstyle does not perform. The rule is not enforced.

## R18 — Exactly one top-level class

| | Reference |
|---|---|
| Guideline | [§3.4.1 Exactly one top-level class declaration](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#341-exactly-one-top-level-class-declaration) (and item 4 of [§3](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#3-source-file-structure)) |
| checkstyle.xml | [L64 `OneTopLevelClass`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L64) |
| Classification | EQUIVALENT |

A second top-level type in the same file is reported. *Verified.*

## R19 — Logical ordering of class contents

| | Reference |
|---|---|
| Guideline | [§3.4.2 Ordering of class contents](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#342-ordering-of-class-contents) |
| checkstyle.xml | — no module |
| Classification | GUIDELINE ONLY |

"Some logical order" cannot be decided mechanically. The absence of `DeclarationOrder` is consistent with the guideline, which explicitly prescribes no fixed order.

## R20 — Overloads never split

| | Reference |
|---|---|
| Guideline | [§3.4.2.1 Same name methods: never split](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#3421-same-name-methods-never-split) |
| checkstyle.xml | [L267 `OverloadMethodsDeclarationOrder`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L267) |
| Classification | PARTIAL |

Split method overloads are reported. *Verified.* §3.4.2.1 also states "The same applies to multiple constructors". The module does not inspect constructors: two constructors separated by a method are not reported. *Verified.*

## R21 — Use of optional braces

| | Reference |
|---|---|
| Guideline | [§4.1.1 Use of optional braces](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#411-use-of-optional-braces) |
| checkstyle.xml | [L73–L76 `NeedBraces`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L73-L76) |
| Classification | EQUIVALENT |

The token list (`do`, `else`, `for`, `if`, `while`) is identical to the guideline's list. The defaults `allowSingleLineStatement=false` and `allowEmptyLoopBody=false` also cover "even when the body is empty". Lambda bodies are not included, which matches "remain optional".

## R22 — Non-empty blocks: K & R style

| | Reference |
|---|---|
| Guideline | [§4.1.2 Nonempty blocks: K & R style](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#412-nonempty-blocks-k--r-style) |
| checkstyle.xml | [L77–L84 `LeftCurly`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L77-L84), [L85–L90 `RightCurlySame`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L85-L90), [L91–L98 `RightCurlyAlone`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L91-L98), [L99–L104 `SuppressionXpathSingleFilter`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L99-L104) |
| Classification | PARTIAL |

Rule by rule:

- "No line break before the opening brace" and "Line break after the opening brace": `LeftCurly` with default `option=eol` enforces both. *Verified:* `() -> { m(); }` is reported with "should have line break after".
- The exception for standalone scope blocks is respected, because `SLIST` is not in the token list.
- "`} else`", "`} catch`", "`} finally`" and "`} while`" follow `RightCurlySame`.
- "Line break before the closing brace" and "after, only if it terminates a statement or the body of a method, constructor or named class" follow `RightCurlyAlone`.

Not covered: closing braces of lambdas, `switch` blocks, `synchronized` blocks, anonymous class bodies, enum constant bodies and switch-rule blocks. Their tokens are absent from both `RightCurly` lists, although §4.1.2 applies to all "blocks and block-like constructs".

## R23 — Empty blocks

| | Reference |
|---|---|
| Guideline | [§4.1.3 Empty blocks: may be concise](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#413-empty-blocks-may-be-concise) |
| checkstyle.xml | [L68–L72 `EmptyBlock` (`option=TEXT`)](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L68-L72), [L110–L116, L125–L126 `WhitespaceAround` `allowEmpty*`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L110-L126), [L99–L104](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L99-L104) |
| Classification | DIVERGENT |

§4.1.3 permits any empty block in either K & R form or as `{}`, without a comment, except that `{}` is not allowed inside a multi-block statement (`if/else`, `try/catch/finally`). Checkstyle is stricter in two independent ways:

1. **Comment required.** `EmptyBlock` with `option=TEXT` requires text (a comment) inside every empty `try`, `finally`, `if`, `else` and `switch` block, whatever the brace form. *Verified:* `if (cond) {⏎}` is reported "Empty if block". The guideline imposes a comment requirement only on empty `catch` blocks (§6.2).
2. **`{}` restricted by construct, not by multi-block context.** `WhitespaceAround` accepts `{}` only where `allowEmptyConstructors`, `allowEmptyMethods`, `allowEmptyTypes`, `allowEmptyLoops` or `allowEmptyLambdas` applies. A standalone `if (cond) {}`, which §4.1.3 permits, is reported. *Verified.* The same holds for other constructs that no `allowEmpty*` property covers, such as `static {}` and `synchronized (x) {}`.

Match: the prohibited case `} catch (Exception e) {}` is reported. *Verified.* The customised message at L126 refers to "(4.1.3)", which is the correct section number in this guideline.

## R24 — Indentation (+2 blocks, +4 continuation, switch)

| | Reference |
|---|---|
| Guideline | [§4.2 Block indentation: +2 spaces](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#42-block-indentation-2-spaces), [§4.5.2 Indent continuation lines at least +4 spaces](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#452-indent-continuation-lines-at-least-4-spaces), [§4.8.4.1 Indentation](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#4841-indentation) |
| checkstyle.xml | [L248–L257 `Indentation` (commented out)](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L248-L257) |
| Classification | GUIDELINE ONLY |

The `Indentation` module is commented out, so none of the indentation rules is enforced:

- +2 per block (§4.2);
- at least +4 for continuation lines (§4.5.2);
- switch labels at +2 and statements at a further +2 (§4.8.4.1).

Moreover, the dormant configuration contradicts the guideline: `basicOffset=4` would enforce four-space block indentation where §4.2 requires two. Upstream the value is `2`. The other dormant values agree with the guideline: `caseIndent=2`, `lineWrappingIndentation=4` (a minimum, because `forceStrictCondition` defaults to `false`), `throwsIndent=4` and `arrayInitIndent=2`. If the block were re-enabled unchanged, Checkstyle and §4.2 would disagree on every indented line.

## R25 — One statement per line

| | Reference |
|---|---|
| Guideline | [§4.3 One statement per line](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#43-one-statement-per-line) |
| checkstyle.xml | [L130 `OneStatementPerLine`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L130) |
| Classification | EQUIVALENT |

`OneStatementPerLine` enforces §4.3 directly.

## R26 — Column limit 120 and its exceptions

| | Reference |
|---|---|
| Guideline | [§4.4 Column limit: 120](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#44-column-limit-120) |
| checkstyle.xml | [L43–L47 `LineLength`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L43-L47) |
| Classification | PARTIAL · DIVERGENT |

The limit (120) and the unit agree: Checkstyle counts Unicode code points, as the guideline defines a "character". *Verified:* a line of 120 supplementary-plane characters, each two UTF-16 units, is accepted, and one of 121 is reported. The exceptions differ:

| Guideline exception | Checkstyle | Effect |
|---|---|---|
| 1. Lines where obeying is not possible (e.g. long URL in Javadoc, JSNI reference) | `href`, `http://`, `https://`, `ftp://` anywhere in the line | **More lenient:** any line containing these substrings is exempt, including ordinary code lines (e.g. a long statement with a URL string literal). *Verified.* JSNI references are not exempt. The alternative `a href` is redundant, being subsumed by `href`. |
| 2. `package` and `import` statements | `^package.*`, `^import.*` | Equivalent |
| 3. Contents of text blocks | not exempt | **Stricter:** a 135-character text-block line is reported. *Verified.* |
| 4. Shell command lines in comments | not exempt | **Stricter** |
| 5. Very long identifiers | not exempt | **Stricter** |

## R27 — Where to break (line-wrapping)

| | Reference |
|---|---|
| Guideline | [§4.5.1 Where to break](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#451-where-to-break) |
| checkstyle.xml | [L294–L300 `OperatorWrap`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L294-L300), [L144–L148 `SeparatorWrapDot`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L144-L148), [L166–L170 `SeparatorWrapMethodRef`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L166-L170), [L149–L153 `SeparatorWrapComma`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L149-L153), [L275–L279 `MethodParamPad`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L275-L279) |
| Classification | PARTIAL |

| §4.5.1 item | Checkstyle | Status |
|---|---|---|
| 1. Break *before* non-assignment operators | `OperatorWrap option=NL`: `BAND, BOR, BSR, BXOR, DIV, EQUAL, GE, GT, LAND, LE, LITERAL_INSTANCEOF, LOR, LT, MINUS, MOD, NOT_EQUAL, PLUS, QUESTION, SL, SR, STAR, METHOD_REF, TYPE_EXTENSION_AND` | Partial: the `:` of the ternary operator (`COLON`) is absent, so `cond ? a :⏎ b` is not reported. *Verified.* |
| 1. …also `.` | `SeparatorWrapDot option=nl` | Equivalent |
| 1. …also `::` | `SeparatorWrapMethodRef option=nl`, also `METHOD_REF` in `OperatorWrap` | Equivalent (enforced twice) |
| 1. …also `&` in type bounds | `TYPE_EXTENSION_AND` | Equivalent |
| 1. …also `\|` in multi-catch | `BOR` | Equivalent |
| 2. Assignment operators and foreach `:`: either way acceptable | no check (assignment tokens and `COLON` absent) | Equivalent (consistent absence) |
| 3. Method/constructor/record name attached to `(` | `MethodParamPad` (default `allowLineBreaks=false`) on `CTOR_DEF, LITERAL_NEW, METHOD_CALL, METHOD_DEF, SUPER_CTOR_CALL, ENUM_CONSTANT_DEF, RECORD_DEF` | Equivalent |
| 4. Comma stays attached to preceding token | `SeparatorWrapComma option=EOL` | Equivalent |
| 5. No break adjacent to lambda / switch-rule arrow (except after it, for a single unbraced expression) | no check | Not enforced: `()⏎ -> m()` is not reported. *Verified.* |

## R28 — Wrapping at `...` and `[]`

| | Reference |
|---|---|
| Guideline | [§4.5.1 Where to break](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#451-where-to-break) (no statement on these tokens) |
| checkstyle.xml | [L154–L159 `SeparatorWrapEllipsis`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L154-L159), [L160–L165 `SeparatorWrapArrayDeclarator`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L160-L165) |
| Classification | CHECKSTYLE ONLY |

Both modules require a line break *after* the ellipsis (`...`) and the array declarator (`[]`), never before. The guideline says nothing about wrapping at these tokens. The in-file comments cite open issues of the Google style guide (#258, #259) as the provisional basis.

## R29 — Vertical whitespace

| | Reference |
|---|---|
| Guideline | [§4.6.1 Vertical whitespace (blank lines)](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#461-vertical-whitespace-blank-lines) |
| checkstyle.xml | [L137–L143 `EmptyLineSeparator`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L137-L143) |
| Classification | PARTIAL |

Matches:

- Blank line between members and initializers (fields, constructors, methods, nested types, static and instance initializers).
- The optional blank line between consecutive fields (`allowNoEmptyLineBetweenFields=true`).
- Multiple blank lines permitted (default `allowMultipleEmptyLines=true`).

Gap: a nested annotation type (`ANNOTATION_DEF`) is not in the token list, so a missing blank line before it is not reported.

## R30 — Horizontal whitespace

| | Reference |
|---|---|
| Guideline | [§4.6.2 Horizontal whitespace](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#462-horizontal-whitespace) |
| checkstyle.xml | [L105–L109 `WhitespaceAfter`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L105-L109), [L110–L129 `WhitespaceAround`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L110-L129), [L238–L247 `GenericWhitespace`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L238-L247), [L266 `NoWhitespaceBeforeCaseDefaultColon`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L266), [L275–L279 `MethodParamPad`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L275-L279), [L280–L285 `NoWhitespaceBefore`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L280-L285), [L286–L293 `ParenPad`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L286-L293) |
| Classification | PARTIAL |

**Required spaces (items 1–10):**

| Item | Checkstyle | Status |
|---|---|---|
| 1. keyword `(` | `WhitespaceAfter` (`if, else, while, do, for`) plus `WhitespaceAround` (`catch, switch, synchronized, try, return, …`) | Equivalent |
| 2. `}` keyword | `WhitespaceAround` on `RCURLY` and the keyword tokens | Equivalent |
| 3. before `{`, with the two exceptions | `WhitespaceAround` on `LCURLY`, `SLIST`; `ARRAY_INIT` absent, so both exceptions hold | Equivalent |
| 4. binary/ternary operators, `&` in bounds, multi-catch `\|`, foreach `:` (`ignoreEnhancedForColon=false`), lambda `->` | `WhitespaceAround` | Equivalent |
| 5. after `,` `:` `;` and cast `)` | `WhitespaceAfter` (`COMMA, SEMI, TYPECAST`), `WhitespaceAround` (`COLON`) | Equivalent |
| 6. before `//` | none | Not enforced |
| 7. after `//` | none | Not enforced: `int //comment` is accepted. *Verified.* |
| 8. type and identifier | enforced by the Java grammar | n/a |
| 9. inside array-initializer braces (optional) | none | Equivalent (consistent absence) |
| 10. type annotation and `[]` / `...` | none | Not enforced |

**Prohibited spaces.** The word "only" in §4.6.2 forbids a space anywhere else. The guideline states this prohibition only implicitly; Checkstyle implements it partially:

- no space before `,` `;` `++` `--` `.` `::` and labels (`NoWhitespaceBefore`);
- no space inside parentheses (`ParenPad`);
- no space between a method name and `(` (`MethodParamPad`);
- no space around generic brackets (`GenericWhitespace`);
- no space before `case`/`default` colons (`NoWhitespaceBeforeCaseDefaultColon`).

`NoWhitespaceAfter` is not configured, so the following are accepted: `! flag`, `object. toString()`, `Object:: toString`, `int [] a`. *All verified.* Also unary minus with a space, and `@ Annotation`.

## R31 — Horizontal alignment

| | Reference |
|---|---|
| Guideline | [§4.6.3 Horizontal alignment: never required](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#463-horizontal-alignment-never-required) |
| checkstyle.xml | — no module (`SingleSpaceSeparator` absent) |
| Classification | EQUIVALENT |

The guideline permits but never requires alignment. Checkstyle neither requires nor forbids multiple interior spaces, so the absence of a check is consistent with the rule.

## R32 — Grouping parentheses

| | Reference |
|---|---|
| Guideline | [§4.7 Grouping parentheses: recommended](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#47-grouping-parentheses-recommended) |
| checkstyle.xml | — no module |
| Classification | GUIDELINE ONLY |

The rule depends on agreement between author and reviewer and cannot be checked. `UnnecessaryParentheses` is correctly absent, because it would contradict the recommendation.

## R33 — Enum classes

| | Reference |
|---|---|
| Guideline | [§4.8.1 Enum classes](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#481-enum-classes) |
| checkstyle.xml | [L77–L84 `LeftCurly`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L77-L84) (default `ignoreEnums=true`) |
| Classification | EQUIVALENT |

No module enforces §4.8.1, but none contradicts it. The single-line form `enum Color { RED, GREEN }` is accepted. *Verified.* This is because `LeftCurly` ignores enum braces by default. Optional line breaks and blank lines between constants are not restricted.

## R34 — One variable per declaration

| | Reference |
|---|---|
| Guideline | [§4.8.2.1 One variable per declaration](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#4821-one-variable-per-declaration) |
| checkstyle.xml | [L131 `MultipleVariableDeclarations`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L131) |
| Classification | EQUIVALENT |

The rule and its exception agree. *Verified:* `for (int i = 0, j = 0; …)` is not reported.

## R35 — Declared when needed

| | Reference |
|---|---|
| Guideline | [§4.8.2.2 Declared when needed](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#4822-declared-when-needed) |
| checkstyle.xml | [L268 `VariableDeclarationUsageDistance`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L268) |
| Classification | PARTIAL |

The module turns "close to the point they are first used (within reason)" into a fixed threshold, with defaults:

- `allowedDistance=3` statements;
- `ignoreFinal=true`, so final locals are exempt. *Verified:* a non-final local at distance 5 is reported; a final one is not.
- `validateBetweenScopes=false`.

"Local variable declarations typically have initializers" is not checked.

## R36 — Array initializers

| | Reference |
|---|---|
| Guideline | [§4.8.3.1 Array initializers: can be "block-like"](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#4831-array-initializers-can-be-block-like) |
| checkstyle.xml | — no module (`ARRAY_INIT` absent from `LeftCurly`, `RightCurly`, `WhitespaceAround`) |
| Classification | EQUIVALENT |

The rule is permissive, and no module restricts array-initializer formatting. Consistent.

## R37 — No C-style array declarations

| | Reference |
|---|---|
| Guideline | [§4.8.3.2 No C-style array declarations](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#4832-no-c-style-array-declarations) |
| checkstyle.xml | [L132 `ArrayTypeStyle`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L132) |
| Classification | EQUIVALENT |

`ArrayTypeStyle` with its default (Java style) enforces §4.8.3.2 directly.

## R38 — Switch layout (other than indentation)

| | Reference |
|---|---|
| Guideline | [§4.8.4.1 Indentation](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#4841-indentation) |
| checkstyle.xml | — no module |
| Classification | GUIDELINE ONLY |

Two layout rules of §4.8.4.1 have no check:

- In an old-style switch, the colon of each switch label is followed by a line break.
- A single-line switch rule containing a non-empty block must break after `{`.

The indentation part of §4.8.4.1 is covered in R24.

## R39 — Fall-through comment

| | Reference |
|---|---|
| Guideline | [§4.8.4.2 Fall-through: commented](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#4842-fall-through-commented) |
| checkstyle.xml | [L134 `FallThrough`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L134) |
| Classification | DIVERGENT |

The guideline accepts "any comment that communicates the idea of fall-through". Checkstyle accepts only comments matching the default `reliefPattern` `falls?[ -]?thr(u|ough)`, e.g. `// fall through`, `// falls through`, `// fallthru`. *Verified:* `// continue with next case` is reported although it conforms to the guideline. The last statement group is exempt in both documents (default `checkLastCaseGroup=false`).

## R40 — Exhaustiveness / `default` label

| | Reference |
|---|---|
| Guideline | [§4.8.4.3 Exhaustiveness and presence of the default label](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#4843-exhaustiveness-and-presence-of-the-default-label) |
| checkstyle.xml | [L133 `MissingSwitchDefault`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L133) |
| Classification | DIVERGENT |

The guideline requires every switch to be *exhaustive*. It explicitly accepts an enum switch that matches every constant without a `default` label. `MissingSwitchDefault` cannot resolve enum constants and requires a `default` in every old-style switch statement. *Verified:* a switch statement covering both constants of a two-constant enum, without `default`, is reported. Checkstyle is therefore stricter for fully covered enum switches.

## R41 — Switch expressions must be new-style

| | Reference |
|---|---|
| Guideline | [§4.8.4.4 Switch expressions](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#4844-switch-expressions) |
| checkstyle.xml | — no module (incidental interaction with [L134 `FallThrough`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L134)) |
| Classification | GUIDELINE ONLY |

No module requires the arrow form for switch expressions. *Verified:* an old-style switch expression (`case 1: yield 2;`) is not reported as such. Checkstyle 9.3 did report "Fall through from previous branch" on its `default:` label, although `yield` terminates the group. That is a false positive, not an enforcement of §4.8.4.4.

## R42 — Type-use annotations

| | Reference |
|---|---|
| Guideline | [§4.8.5.1 Type-use annotations](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#4851-type-use-annotations) |
| checkstyle.xml | — no module |
| Classification | GUIDELINE ONLY |

Placement immediately before the annotated type is not checked. Identifying type-use annotations requires resolving `@Target`, which Checkstyle does not do.

## R43 — Class, package, module, method and constructor annotations

| | Reference |
|---|---|
| Guideline | [§4.8.5.2 Class, package, and module annotations](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#4852-class-package-and-module-annotations), [§4.8.5.3 Method and constructor annotations](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#4853-method-and-constructor-annotations) |
| checkstyle.xml | [L301–L306 `AnnotationLocationMostCases`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L301-L306) |
| Classification | DIVERGENT |

1. **Classes.** The default `allowSamelineSingleParameterlessAnnotation=true` applies to *all* listed tokens, including `CLASS_DEF`, `INTERFACE_DEF`, `ENUM_DEF` and `RECORD_DEF`. §4.8.5.2 requires one annotation per line for classes, and allows the same-line exception only for methods and constructors (§4.8.5.3). `@Deprecated public static class D` is accepted. *Verified.* Checkstyle is more lenient for types.
2. **Methods and constructors.** Equivalent: a single parameterless annotation may share the line; otherwise each annotation is on its own line.
3. **Packages.** `PACKAGE_DEF` is not in the token list, so annotations in `package-info.java` are not checked.
4. **Modules.** Excluded; see R04.

## R44 — Field, parameter and local variable annotations

| | Reference |
|---|---|
| Guideline | [§4.8.5.4 Field annotations](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#4854-field-annotations), [§4.8.5.5 Parameter and local variable annotations](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#4855-parameter-and-local-variable-annotations) |
| checkstyle.xml | [L307–L311 `AnnotationLocationVariables`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L307-L311) |
| Classification | EQUIVALENT |

`allowSamelineMultipleAnnotations=true` on `VARIABLE_DEF` matches §4.8.5.4. `VARIABLE_DEF` also covers local variables, for which §4.8.5.5 sets no rules. The permissive setting keeps this without practical conflict. Parameters are not in the token list, which is consistent with §4.8.5.5.

## R45 — Block comment style

| | Reference |
|---|---|
| Guideline | [§4.8.6.1 Block comment style](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#4861-block-comment-style) |
| checkstyle.xml | [L356–L358 `CommentsIndentation`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L356-L358) |
| Classification | PARTIAL |

Enforced: comments are indented at the level of the surrounding code (both `//` and `/*` forms). Not enforced:

- subsequent lines of a multi-line `/* … */` start with `*` aligned with the previous line;
- "comments are not enclosed in boxes".

## R46 — TODO comments

| | Reference |
|---|---|
| Guideline | [§4.8.6.2 TODO comments](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#4862-todo-comments) |
| checkstyle.xml | — no module (`TodoComment` absent) |
| Classification | GUIDELINE ONLY |

None of the required format is checked: `TODO: <link> - <explanation>`, no person or team as context, specific date or event. A `TodoComment` module with a suitable `format` could check the syntactic part.

## R47 — Modifier order

| | Reference |
|---|---|
| Guideline | [§4.8.7 Modifiers](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#487-modifiers) |
| checkstyle.xml | [L136 `ModifierOrder`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L136) |
| Classification | DIVERGENT (theoretical) |

The guideline order is `… static final sealed non-sealed transient …`. Checkstyle's built-in order places `sealed`/`non-sealed` *before* `final`. *Verified:* `final sealed` is reported as "'sealed' modifier out of order", while `sealed final` is accepted. The difference has no practical effect: Java forbids combining `final` with `sealed` or `non-sealed`, so such code does not compile. For all other modifiers the orders agree. The `requires` directive order `transitive static` is not checked (R04).

## R48 — Numeric literals

| | Reference |
|---|---|
| Guideline | [§4.8.8 Numeric Literals](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#488-numeric-literals) |
| checkstyle.xml | [L135 `UpperEll`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L135) |
| Classification | EQUIVALENT |

`UpperEll` enforces the uppercase `L` suffix required by §4.8.8.

## R49 — Text blocks

| | Reference |
|---|---|
| Guideline | [§4.8.9 Text Blocks](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#489-text-blocks) |
| checkstyle.xml | — no module; conflicting: [L43–L47 `LineLength`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L43-L47) |
| Classification | GUIDELINE ONLY |

None of the text block layout rules is checked:

- the opening `"""` on a new line;
- the closing `"""` indented like the opening one;
- content indented at least as far.

In addition, "the contents of a text block may exceed the column limit" is contradicted by `LineLength`, which reports long text-block lines (R26).

## R50 — Rules common to all identifiers

| | Reference |
|---|---|
| Guideline | [§5.1 Rules common to all identifiers](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#51-rules-common-to-all-identifiers) |
| checkstyle.xml | naming modules [L171–L236](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L171-L236), [L347–L351](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L347-L351) |
| Classification | PARTIAL |

1. **Character set.** "ASCII letters and digits, and in a small number of cases underscores": the configured patterns admit `[a-zA-Z0-9]` only. The exception is `MethodName`, which also admits `_` (R53). The `TypeName` default is `^[A-Z][a-zA-Z0-9]*$`.
2. **No special prefixes or suffixes** (`name_`, `mName`, `s_name`, `kName`). For *instance fields*, the `MemberName` pattern `^[a-z][a-z0-9]…` rejects `mName`, `kName`, `name_` and `s_name`. For *static* fields there is no naming module (`StaticVariableName` and `ConstantName` are absent), so e.g. a static field `Bad_Name` is accepted. *Verified.*

## R51 — Package names

| | Reference |
|---|---|
| Guideline | [§5.2.1 Package and module names](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#521-package-and-module-names) |
| checkstyle.xml | [L171–L175 `PackageName`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L171-L175) |
| Classification | DIVERGENT |

The guideline admits lowercase letters and digits. The pattern `^[a-z]+(\.[a-z][a-z0-9]*)*$` forbids digits in the *first* segment. *Verified:* `org2.x` is reported although it conforms to §5.2.1. Module names are not checked (R04).

## R52 — Class names

| | Reference |
|---|---|
| Guideline | [§5.2.2 Class names](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#522-class-names) |
| checkstyle.xml | [L176–L181 `TypeName`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L176-L181) (with [L258–L265 `AbbreviationAsWordInName`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L258-L265)) |
| Classification | PARTIAL |

UpperCamelCase is enforced: `TypeName` checks the leading capital and the character set, and `AbbreviationAsWordInName` rejects runs of capitals (R60). Not checked:

- the `Test` suffix of test classes (test sources are outside scope anyway; R03);
- the noun / adjective conventions, which are not mechanically decidable.

## R53 — Method names

| | Reference |
|---|---|
| Guideline | [§5.2.3 Method names](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#523-method-names) |
| checkstyle.xml | [L347–L351 `MethodName`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L347-L351) |
| Classification | DIVERGENT |

The pattern is `^[a-z][a-z0-9][a-zA-Z0-9_]*$`.

1. **Underscores.** The guideline permits them only in JUnit test method names, with each component in lowerCamelCase. The pattern admits `_` in *every* method and does not check the components. *Verified:* `foo_Bar()` in a production class is accepted. More lenient.
2. **Minimum length / second character.** The pattern requires at least two characters, the second one not uppercase. *Verified:* `f()` and `m()` are reported. Names such as `eTag()` are also rejected, although both are valid lowerCamelCase under §5.3. Stricter.

## R54 — Constant names

| | Reference |
|---|---|
| Guideline | [§5.2.4 Constant names](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#524-constant-names) |
| checkstyle.xml | — no module (`ConstantName` absent; [L258–L265 `AbbreviationAsWordInName`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L258-L265) keeps default `ignoreStaticFinal=true`) |
| Classification | GUIDELINE ONLY |

UPPER_SNAKE_CASE for constants is not checked. The guideline's definition of a constant (deep immutability) cannot be decided by Checkstyle, which explains the absence. The consequence is that no naming check at all applies to `static final` fields. *Verified:* `static final int maxValue` is accepted.

## R55 — Non-constant field names

| | Reference |
|---|---|
| Guideline | [§5.2.5 Non-constant field names](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#525-non-constant-field-names) |
| checkstyle.xml | [L182–L186 `MemberName`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L182-L186) |
| Classification | PARTIAL · DIVERGENT |

1. **Static fields not covered.** The guideline covers non-constant fields "(static or otherwise)". `MemberName` applies to instance fields only, and `StaticVariableName` is absent. `AbbreviationAsWordInName` keeps its default `ignoreStatic=true`. *Verified:* `static String customerID` and `static String Bad_Name` are both accepted.
2. **Valid names rejected.** The pattern `^[a-z][a-z0-9][a-zA-Z0-9]*$` rejects lowerCamelCase names whose first word has one letter (`aFoo`, `xCoordinate`) and one-character names (`x`, `l`). *Verified.* The guideline does not forbid these. Stricter.

## R56 — Parameter names (including lambda and catch parameters)

| | Reference |
|---|---|
| Guideline | [§5.2.6 Parameter names](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#526-parameter-names) |
| checkstyle.xml | [L187–L191 `ParameterName`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L187-L191), [L192–L196 `LambdaParameterName`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L192-L196), [L197–L201 `CatchParameterName`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L197-L201) |
| Classification | PARTIAL · DIVERGENT |

The pattern `^[a-z]([a-z0-9][a-zA-Z0-9]*)?$` is used for all three kinds.

1. "One-character parameter names in public methods should be avoided" is not enforced: single-character names are accepted in all methods.
2. As in R55, names such as `aFoo` are rejected although they are valid lowerCamelCase.
3. The guideline has no separate rules for lambda or catch parameters. Treating them as parameters is consistent with §5.2.6.

## R57 — Local variable names

| | Reference |
|---|---|
| Guideline | [§5.2.7 Local variable names](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#527-local-variable-names), [§5.3 Camel case: defined](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#53-camel-case-defined) |
| checkstyle.xml | [L202–L206 `LocalVariableName`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L202-L206), [L207–L211 `PatternVariableName`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L207-L211), [L258–L265 `AbbreviationAsWordInName` (`ignoreFinal=false`)](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L258-L265) |
| Classification | PARTIAL · DIVERGENT |

1. **Final locals.** `LocalVariableName` applies to *non-final* locals only, and `LocalFinalVariableName` is absent. §5.2.7 explicitly addresses final locals ("should not be styled as constants"). They are caught only indirectly, when `AbbreviationAsWordInName` sees two or more consecutive capitals. *Verified:* `final int MAX` is reported (by `AbbreviationAsWordInName`), while `final int Y` is accepted.
2. **Valid names rejected.** `aBar` is reported. *Verified.* So is `guava33_4_6`, which §5.3 gives as the *correct* form for version numbers. *Verified.* Stricter.
3. Pattern variables (`instanceof` patterns) are checked with the same pattern. The guideline has no separate rule, so this is consistent.

## R58 — Type variable names

| | Reference |
|---|---|
| Guideline | [§5.2.8 Type variable names](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#528-type-variable-names) |
| checkstyle.xml | [L212–L216 `ClassTypeParameterName`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L212-L216), [L222–L226 `RecordTypeParameterName`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L222-L226), [L227–L231 `MethodTypeParameterName`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L227-L231), [L232–L236 `InterfaceTypeParameterName`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L232-L236) |
| Classification | PARTIAL |

The pattern `(^[A-Z][0-9]?)$|([A-Z][a-zA-Z0-9]*[T]$)` accepts both guideline styles (`E`, `T2`, `RequestT`). However, the second alternative is not anchored with `^`, and Checkstyle matches with *find* semantics. Any name that merely *ends* in an UpperCamelCase fragment followed by `T` is therefore accepted. *Verified:* `<fooBarT>` is accepted, although it is not "a name in the form used for classes".

## R59 — Record component names

| | Reference |
|---|---|
| Guideline | — no rule (record components appear only in [§7.3 Where Javadoc is used](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#73-where-javadoc-is-used)) |
| checkstyle.xml | [L217–L221 `RecordComponentName`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L217-L221) |
| Classification | CHECKSTYLE ONLY |

The guideline defines no naming rule for record components. The pattern (lowerCamelCase, as for parameters) is a reasonable extension but has no normative basis in the document.

## R60 — Camel case: defined

| | Reference |
|---|---|
| Guideline | [§5.3 Camel case: defined](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#53-camel-case-defined) |
| checkstyle.xml | [L258–L265 `AbbreviationAsWordInName`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L258-L265) |
| Classification | PARTIAL |

With `allowedAbbreviationLength=0`, no two consecutive capitals are allowed. Every entry in the "Incorrect" column of the §5.3 table that contains a run of capitals is rejected: `XMLHTTPRequest`, `newCustomerID`, `supportsIPv6OnIOS`. Both acceptable forms `YouTubeImporter` and `YoutubeImporter` are accepted. Not detectable:

- `innerStopWatch` and `turnOn2Sv` (incorrect per §5.3, but with no run of capitals);
- the ASCII transliteration and word-splitting steps.

Coverage limits:

- defaults `ignoreStatic=true` and `ignoreStaticFinal=true`, so static fields are exempt;
- `ENUM_CONSTANT_DEF` is not a token;
- the version-number underscore exception (`guava33_4_6`) is rejected by the naming patterns (R57).

## R61 — `@Override` always used

| | Reference |
|---|---|
| Guideline | [§6.1 @Override: always used](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#61-override-always-used) |
| checkstyle.xml | — no module |
| Classification | GUIDELINE ONLY |

Deciding whether a method overrides requires type resolution. The rule is not enforced by Checkstyle; `javac` has no lint for it either. A type-aware tool is required, e.g. PMD's `MissingOverride` rule (PMD is already part of the pipeline). (`Override` does appear at L330 and L336, but only as an exemption from Javadoc requirements; see R69.)

## R62 — Caught exceptions not ignored

| | Reference |
|---|---|
| Guideline | [§6.2 Caught exceptions: not ignored](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#62-caught-exceptions-not-ignored) |
| checkstyle.xml | [L353–L355 `EmptyCatchBlock`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L353-L355) |
| Classification | DIVERGENT |

1. **Match.** An empty catch block is accepted only if it contains a comment (default `commentFormat=.*`). *Verified.*
2. **Exemption not in the guideline.** With `exceptionVariableName=expected`, a catch block whose variable is named `expected` may be empty *without* a comment. *Verified:* `catch (IllegalStateException expected) {⏎}` is accepted. (The concise form `{}` is still reported, by `WhitespaceAround`, R23.) More lenient.
3. Whether the comment actually states the *reason* cannot be checked.

## R63 — Static members qualified using the class

| | Reference |
|---|---|
| Guideline | [§6.3 Static members: qualified using class](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#63-static-members-qualified-using-class) |
| checkstyle.xml | — no module |
| Classification | GUIDELINE ONLY |

Enforcing this rule requires type resolution, which Checkstyle does not perform.

## R64 — Finalizers not used

| | Reference |
|---|---|
| Guideline | [§6.4 Finalizers: not used](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#64-finalizers-not-used) |
| checkstyle.xml | [L237 `NoFinalizer`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L237) |
| Classification | EQUIVALENT |

`NoFinalizer` reports any declaration of `finalize()`, which is what §6.4 forbids.

## R65 — Javadoc general form

| | Reference |
|---|---|
| Guideline | [§7.1.1 General form](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#711-general-form) |
| checkstyle.xml | [L352 `SingleLineJavadoc`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L352) |
| Classification | EQUIVALENT |

A single-line Javadoc containing a block tag is reported, matching "this only applies when there are no block tags". The basic multi-line form is always accepted.

## R66 — Javadoc paragraphs

| | Reference |
|---|---|
| Guideline | [§7.1.2 Paragraphs](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#712-paragraphs) |
| checkstyle.xml | [L319 `JavadocParagraph`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L319), [L320 `RequireEmptyLineBeforeBlockTagGroup`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L320) |
| Classification | PARTIAL |

Enforced:

- a blank line between paragraphs;
- `<p>` immediately before the first word of each paragraph after the first;
- a blank line before the block-tag group.

Not enforced: "HTML tags for other block-level elements, such as `<ul>` or `<table>`, are *not* preceded with `<p>`". *Verified:* `<p><ul>` is accepted by the 9.3 engine.

## R67 — Javadoc block tags

| | Reference |
|---|---|
| Guideline | [§7.1.3 Block tags](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#713-block-tags) |
| checkstyle.xml | [L321–L325 `AtclauseOrder`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L321-L325), [L312 `NonEmptyAtclauseDescription`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L312), [L314 `JavadocTagContinuationIndentation`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L314) |
| Classification | PARTIAL (minor) |

All three requirements are covered:

- order `@param`, `@return`, `@throws`, `@deprecated`;
- non-empty descriptions (the default tokens also include `@exception`);
- continuation indentation of at least 4 (default `offset=4`).

Minor gap: the `AtclauseOrder` target list is `CLASS_DEF, INTERFACE_DEF, ENUM_DEF, METHOD_DEF, CTOR_DEF, VARIABLE_DEF`, so tag order in the Javadoc of records, compact constructors and annotation types is not checked.

## R68 — Summary fragment

| | Reference |
|---|---|
| Guideline | [§7.2 The summary fragment](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#72-the-summary-fragment) |
| checkstyle.xml | [L315–L318 `SummaryJavadoc`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L315-L318) |
| Classification | PARTIAL |

Enforced:

- the forbidden openings `@return the`, `This method returns ` and `A {@code X} is a`, which match the guideline's examples;
- terminating punctuation (default `period="."`).

Not enforced:

- the fragment must not be "a complete imperative sentence": `Save the record.` is accepted. *Verified.*
- the fragment is capitalised: `lowercase start.` is accepted. *Verified.*

## R69 — Where Javadoc is required

| | Reference |
|---|---|
| Guideline | [§7.3 Where Javadoc is used](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#73-where-javadoc-is-used), [§7.3.1 Exception: self-explanatory members](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#731-exception-self-explanatory-members), [§7.3.2 Exception: overrides](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#732-exception-overrides) |
| checkstyle.xml | [L333–L339 `MissingJavadocMethod`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L333-L339), [L340–L346 `MissingJavadocType`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L340-L346) |
| Classification | DIVERGENT |

§7.3 requires Javadoc for every *visible* class, member and record component: public, or protected in a visible class.

| Element | Checkstyle | Status |
|---|---|---|
| Public and protected types | `MissingJavadocType scope=protected`: a protected nested class without Javadoc is reported. *Verified.* | Equivalent |
| Public methods / constructors | `MissingJavadocMethod scope=public` | Partial, see below |
| Protected methods / constructors | not required (`scope=public`): a protected 3-line method without Javadoc is accepted. *Verified.* | **More lenient** |
| Public methods of a *protected* nested class | not required, because the effective scope is protected. *Verified.* | **More lenient** |
| Fields | no module (`JavadocVariable` absent): a public field without Javadoc is accepted. *Verified.* | Not enforced |
| Record components | no module | Not enforced |

Further differences:

1. `minLineCount=2` exempts every public method or constructor whose body has at most two lines. *Verified:* 2 lines accepted, 3 lines reported. This is a size criterion. §7.3.1 permits omission only for members about which "there really and truly is nothing else worthwhile to say", which is a content criterion. The two coincide only for trivial getters.
2. `allowedAnnotations=Override` corresponds to §7.3.2. `Test` is an additional exemption with no counterpart in the guideline.

## R70 — Javadoc content validation for public methods

| | Reference |
|---|---|
| Guideline | — no explicit rule (closest: [§7.1.3 Block tags](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#713-block-tags), [§7.3.4 Non-required Javadoc](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#734-non-required-javadoc)) |
| checkstyle.xml | [L326–L332 `JavadocMethod`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L326-L332) |
| Classification | CHECKSTYLE ONLY |

`JavadocMethod` checks that existing tags are consistent with the signature, e.g. that there is no `@param` for a non-existent parameter. It does this for public methods, constructors, annotation fields and compact constructors. `allowMissingParamTags=true` and `allowMissingReturnTag=true` are consistent with the guideline, which never requires those tags. The consistency check itself has no explicit counterpart in the guideline.

## R71 — Javadoc position

| | Reference |
|---|---|
| Guideline | — no explicit rule (closest: [§4.8.5.2](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#4852-class-package-and-module-annotations), "annotations … appear immediately after the documentation block") |
| checkstyle.xml | [L313 `InvalidJavadocPosition`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L313) |
| Classification | CHECKSTYLE ONLY |

A `/** … */` comment that does not precede a declaration is reported. The guideline implies this placement but does not state it as a rule.

## R72 — Editorial inconsistencies in the guideline that affect the comparison

| | Reference |
|---|---|
| Guideline | [§3.2](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#32-package-declaration), [§4.4](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#44-column-limit-120), [§4.6.2](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#462-horizontal-whitespace), [§7.3](https://github.com/Chasquis-Messaging/guidelines/blob/ee8313a37fdf6bfe14e4e05d15dbda2c8f858c59/Java_Coding_Guidelines.md#73-where-javadoc-is-used) |
| checkstyle.xml | [L45 `max=120`](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml#L45) |
| Classification | INFORMATIVE |

1. **Column limit.** §3.2 refers to "Section 4.4, Column limit: **100**", whereas §4.4 is titled and specifies **120**. `LineLength` uses 120, consistent with §4.4 but not with the cross-reference in §3.2.
2. **Cross-reference.** §4.6.2 item 3 justifies `{{` "by item 10 below". The relevant item is 9 (array initializer braces); item 10 concerns type annotations.
3. **Numbering.** §7.3 jumps from 7.3.2 to 7.3.4; there is no 7.3.3. The cross-reference in §7.3 to "Section 7.3.4" is itself correct.
4. **Rendering.** In §3.3.3, the `**Note:**` inside the `<div class="note">` block is not rendered as bold on GitHub, because Markdown is not processed directly inside an HTML block. This is cosmetic.

## R73 — Engine version that actually interprets `checkstyle.xml`

| | Reference |
|---|---|
| Guideline | — (not applicable) |
| checkstyle.xml | [whole file](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/checkstyle.xml); pipeline: [`analyze.sh` L29](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/analyze.sh#L29), [L80](https://github.com/bbakx/Holodeck-B2B/blob/d28fb177147813cc7f2550fc0ef89674f818d300/ci/analyze.sh#L80) |
| Classification | INFORMATIVE |

`analyze.sh` sets `CHECKSTYLE_ENGINE_VERSION="13.5.0"` and passes it as `-Dcheckstyle.version`. `maven-checkstyle-plugin` 3.6.0 defines no such user property; its engine is fixed at Checkstyle 9.3 (`checkstyleVersion` in the plugin POM). The engine can only be replaced through a `<dependencies>` block in the plugin declaration. So the property has no effect, and `checkstyle.xml` is interpreted by Checkstyle **9.3**. All *Verified* findings above were therefore obtained with 9.3. This is consistent with the configuration, which is the 9.3 `google_checks.xml` (R01). Some findings may differ under a newer engine, for example the `FallThrough` false positive in R41 and the `JavadocParagraph` behaviour in R66.
