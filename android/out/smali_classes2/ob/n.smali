.class public final Lob/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lob/n$b;
    }
.end annotation


# static fields
.field public static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lob/j;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lob/n;

.field public static final g:Lob/n$a;


# instance fields
.field public final a:Ldc/f;

.field public final b:Ldc/e;

.field public final c:Ldc/d$a;

.field public final d:Lx9/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/p<",
            "Lcc/e0;",
            "Lcc/e0;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-class v0, Lob/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    invoke-static {v0}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lob/n;->e:Ljava/util/List;

    new-instance v0, Lob/n$a;

    invoke-direct {v0}, Lob/n$a;-><init>()V

    sput-object v0, Lob/n;->g:Lob/n$a;

    new-instance v1, Lob/n;

    sget-object v2, Ldc/f$a;->a:Ldc/f$a;

    sget-object v3, Ldc/e$a;->a:Ldc/e$a;

    invoke-direct {v1, v0, v2, v3}, Lob/n;-><init>(Ldc/d$a;Ldc/f$a;Ldc/e$a;)V

    sput-object v1, Lob/n;->f:Lob/n;

    return-void
.end method

.method public constructor <init>(Ldc/d$a;Ldc/f$a;Ldc/e$a;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lob/n;->c:Ldc/d$a;

    iput-object p2, p0, Lob/n;->a:Ldc/f;

    iput-object p3, p0, Lob/n;->b:Ldc/e;

    iput-object v0, p0, Lob/n;->d:Lx9/p;

    return-void

    :cond_0
    const/4 p1, 0x7

    invoke-static {p1}, Lob/n;->a(I)V

    throw v0

    :cond_1
    const/4 p1, 0x6

    invoke-static {p1}, Lob/n;->a(I)V

    throw v0

    :cond_2
    const/4 p1, 0x5

    invoke-static {p1}, Lob/n;->a(I)V

    throw v0
.end method

.method public static synthetic a(I)V
    .locals 24

    move/from16 v0, p0

    const/16 v1, 0x2d

    const/16 v2, 0x2c

    const/16 v3, 0x67

    const/16 v4, 0x62

    const/16 v5, 0x5f

    const/16 v6, 0x15

    const/16 v7, 0x10

    const/16 v8, 0xc

    const/16 v9, 0xb

    if-eq v0, v9, :cond_0

    if-eq v0, v8, :cond_0

    if-eq v0, v7, :cond_0

    if-eq v0, v6, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    const-string v10, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v10, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v11, 0x2

    if-eq v0, v9, :cond_1

    if-eq v0, v8, :cond_1

    if-eq v0, v7, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    packed-switch v0, :pswitch_data_6

    packed-switch v0, :pswitch_data_7

    const/4 v12, 0x3

    goto :goto_1

    :cond_1
    :pswitch_1
    const/4 v12, 0x2

    :goto_1
    new-array v12, v12, [Ljava/lang/Object;

    const-string v13, "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil"

    const/4 v14, 0x0

    packed-switch v0, :pswitch_data_8

    :pswitch_2
    const-string v15, "kotlinTypeRefiner"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_3
    const-string v15, "memberDescriptor"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_4
    const-string v15, "onConflict"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_5
    const-string v15, "extractFrom"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_6
    const-string v15, "overrider"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_7
    const-string v15, "toFilter"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_8
    const-string v15, "classModality"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_9
    const-string v15, "descriptorByHandle"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_a
    const-string v15, "overridables"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_b
    const-string v15, "bReturnType"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_c
    const-string v15, "aReturnType"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_d
    const-string v15, "descriptors"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_e
    const-string v15, "candidate"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_f
    const-string v15, "b"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_10
    const-string v15, "a"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_11
    const-string v15, "notOverridden"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_12
    const-string v15, "descriptorsFromSuper"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_13
    const-string v15, "fromCurrent"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_14
    const-string v15, "fromSuper"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_15
    const-string v15, "overriding"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_16
    const-string v15, "strategy"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_17
    const-string v15, "current"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_18
    const-string v15, "membersFromCurrent"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_19
    const-string v15, "membersFromSupertypes"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_1a
    const-string v15, "name"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_1b
    const-string v15, "subTypeParameter"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_1c
    const-string v15, "superTypeParameter"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_1d
    const-string v15, "typeCheckerState"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_1e
    const-string v15, "typeInSub"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_1f
    const-string v15, "typeInSuper"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_20
    const-string v15, "secondParameters"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_21
    const-string v15, "firstParameters"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_22
    const-string v15, "subDescriptor"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_23
    const-string v15, "superDescriptor"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_24
    const-string v15, "result"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_25
    const-string v15, "descriptor"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_26
    const-string v15, "g"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_27
    const-string v15, "f"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_28
    aput-object v13, v12, v14

    goto :goto_2

    :pswitch_29
    const-string v15, "transformFirst"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_2a
    const-string v15, "candidateSet"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_2b
    const-string v15, "axioms"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_2c
    const-string v15, "equalityAxioms"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_2d
    const-string v15, "customSubtype"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_2e
    const-string v15, "kotlinTypePreparator"

    aput-object v15, v12, v14

    :goto_2
    const-string v14, "filterVisibleFakeOverrides"

    const-string v15, "getMinimalModality"

    const-string v16, "determineModalityForFakeOverride"

    const-string v17, "selectMostSpecificMember"

    const-string v18, "createTypeCheckerState"

    const-string v19, "isOverridableByWithoutExternalConditions"

    const-string v20, "isOverridableBy"

    const-string v21, "getOverriddenDeclarations"

    const-string v22, "filterOverrides"

    const/16 v23, 0x1

    if-eq v0, v9, :cond_8

    if-eq v0, v8, :cond_8

    if-eq v0, v7, :cond_7

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_9

    packed-switch v0, :pswitch_data_a

    packed-switch v0, :pswitch_data_b

    packed-switch v0, :pswitch_data_c

    aput-object v13, v12, v23

    goto :goto_3

    :pswitch_2f
    aput-object v16, v12, v23

    goto :goto_3

    :pswitch_30
    aput-object v17, v12, v23

    goto :goto_3

    :pswitch_31
    aput-object v19, v12, v23

    goto :goto_3

    :cond_2
    aput-object v18, v12, v23

    goto :goto_3

    :cond_3
    const-string v13, "extractMembersOverridableInBothWays"

    aput-object v13, v12, v23

    goto :goto_3

    :cond_4
    aput-object v14, v12, v23

    goto :goto_3

    :cond_5
    aput-object v15, v12, v23

    goto :goto_3

    :cond_6
    :pswitch_32
    aput-object v20, v12, v23

    goto :goto_3

    :cond_7
    aput-object v21, v12, v23

    goto :goto_3

    :cond_8
    aput-object v22, v12, v23

    :goto_3
    packed-switch v0, :pswitch_data_d

    const-string v13, "createWithTypeRefiner"

    aput-object v13, v12, v11

    goto/16 :goto_4

    :pswitch_33
    const-string v13, "findMaxVisibility"

    aput-object v13, v12, v11

    goto/16 :goto_4

    :pswitch_34
    const-string v13, "computeVisibilityToInherit"

    aput-object v13, v12, v11

    goto/16 :goto_4

    :pswitch_35
    const-string v13, "resolveUnknownVisibilityForMember"

    aput-object v13, v12, v11

    goto/16 :goto_4

    :pswitch_36
    const-string v13, "extractMembersOverridableInBothWays"

    aput-object v13, v12, v11

    goto/16 :goto_4

    :pswitch_37
    aput-object v14, v12, v11

    goto/16 :goto_4

    :pswitch_38
    aput-object v15, v12, v11

    goto/16 :goto_4

    :pswitch_39
    aput-object v16, v12, v11

    goto/16 :goto_4

    :pswitch_3a
    const-string v13, "createAndBindFakeOverride"

    aput-object v13, v12, v11

    goto/16 :goto_4

    :pswitch_3b
    aput-object v17, v12, v11

    goto/16 :goto_4

    :pswitch_3c
    const-string v13, "isReturnTypeMoreSpecific"

    aput-object v13, v12, v11

    goto/16 :goto_4

    :pswitch_3d
    const-string v13, "isMoreSpecificThenAllOf"

    aput-object v13, v12, v11

    goto/16 :goto_4

    :pswitch_3e
    const-string v13, "isVisibilityMoreSpecific"

    aput-object v13, v12, v11

    goto/16 :goto_4

    :pswitch_3f
    const-string v13, "isMoreSpecific"

    aput-object v13, v12, v11

    goto :goto_4

    :pswitch_40
    const-string v13, "createAndBindFakeOverrides"

    aput-object v13, v12, v11

    goto :goto_4

    :pswitch_41
    const-string v13, "allHasSameContainingDeclaration"

    aput-object v13, v12, v11

    goto :goto_4

    :pswitch_42
    const-string v13, "extractAndBindOverridesForMember"

    aput-object v13, v12, v11

    goto :goto_4

    :pswitch_43
    const-string v13, "isVisibleForOverride"

    aput-object v13, v12, v11

    goto :goto_4

    :pswitch_44
    const-string v13, "generateOverridesInFunctionGroup"

    aput-object v13, v12, v11

    goto :goto_4

    :pswitch_45
    const-string v13, "areTypeParametersEquivalent"

    aput-object v13, v12, v11

    goto :goto_4

    :pswitch_46
    const-string v13, "areTypesEquivalent"

    aput-object v13, v12, v11

    goto :goto_4

    :pswitch_47
    aput-object v18, v12, v11

    goto :goto_4

    :pswitch_48
    const-string v13, "getBasicOverridabilityProblem"

    aput-object v13, v12, v11

    goto :goto_4

    :pswitch_49
    aput-object v19, v12, v11

    goto :goto_4

    :pswitch_4a
    aput-object v20, v12, v11

    goto :goto_4

    :pswitch_4b
    const-string v13, "collectOverriddenDeclarations"

    aput-object v13, v12, v11

    goto :goto_4

    :pswitch_4c
    aput-object v21, v12, v11

    goto :goto_4

    :pswitch_4d
    const-string v13, "overrides"

    aput-object v13, v12, v11

    goto :goto_4

    :pswitch_4e
    aput-object v22, v12, v11

    goto :goto_4

    :pswitch_4f
    const-string v13, "filterOutOverridden"

    aput-object v13, v12, v11

    goto :goto_4

    :pswitch_50
    const-string v13, "<init>"

    aput-object v13, v12, v11

    goto :goto_4

    :pswitch_51
    const-string v13, "create"

    aput-object v13, v12, v11

    goto :goto_4

    :pswitch_52
    const-string v13, "createWithTypePreparatorAndCustomSubtype"

    aput-object v13, v12, v11

    :goto_4
    :pswitch_53
    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    if-eq v0, v9, :cond_9

    if-eq v0, v8, :cond_9

    if-eq v0, v7, :cond_9

    if-eq v0, v6, :cond_9

    if-eq v0, v5, :cond_9

    if-eq v0, v4, :cond_9

    if-eq v0, v3, :cond_9

    if-eq v0, v2, :cond_9

    if-eq v0, v1, :cond_9

    packed-switch v0, :pswitch_data_e

    packed-switch v0, :pswitch_data_f

    packed-switch v0, :pswitch_data_10

    packed-switch v0, :pswitch_data_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    :pswitch_54
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x50
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x18
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x20
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x50
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x5a
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2d
        :pswitch_2
        :pswitch_2c
        :pswitch_2b
        :pswitch_2
        :pswitch_2e
        :pswitch_2a
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_28
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_28
        :pswitch_23
        :pswitch_22
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_23
        :pswitch_22
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_28
        :pswitch_28
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1d
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_17
        :pswitch_16
        :pswitch_11
        :pswitch_17
        :pswitch_11
        :pswitch_16
        :pswitch_10
        :pswitch_f
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_10
        :pswitch_c
        :pswitch_f
        :pswitch_b
        :pswitch_1d
        :pswitch_a
        :pswitch_9
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_a
        :pswitch_17
        :pswitch_16
        :pswitch_d
        :pswitch_17
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_d
        :pswitch_8
        :pswitch_28
        :pswitch_17
        :pswitch_7
        :pswitch_28
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_4
        :pswitch_28
        :pswitch_6
        :pswitch_5
        :pswitch_16
        :pswitch_3
        :pswitch_3
        :pswitch_d
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x18
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x20
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x50
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x5a
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x1
        :pswitch_52
        :pswitch_52
        :pswitch_51
        :pswitch_51
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4e
        :pswitch_53
        :pswitch_53
        :pswitch_4d
        :pswitch_4d
        :pswitch_4c
        :pswitch_53
        :pswitch_4b
        :pswitch_4b
        :pswitch_4a
        :pswitch_4a
        :pswitch_53
        :pswitch_4a
        :pswitch_4a
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_49
        :pswitch_49
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_48
        :pswitch_48
        :pswitch_47
        :pswitch_47
        :pswitch_53
        :pswitch_53
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_43
        :pswitch_43
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_3f
        :pswitch_3f
        :pswitch_3e
        :pswitch_3e
        :pswitch_3d
        :pswitch_3d
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3b
        :pswitch_3b
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_39
        :pswitch_39
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_38
        :pswitch_38
        :pswitch_53
        :pswitch_37
        :pswitch_37
        :pswitch_53
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_53
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x18
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x20
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x50
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x5a
        :pswitch_54
        :pswitch_54
        :pswitch_54
    .end packed-switch
.end method

.method public static b(Lcc/e0;Lcc/e0;Lcc/b1;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    invoke-static {p0}, Lc5/v;->y(Lcc/e0;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lc5/v;->y(Lcc/e0;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcc/e0;->P0()Lcc/s1;

    move-result-object p0

    invoke-virtual {p1}, Lcc/e0;->P0()Lcc/s1;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcc/g;->e(Lcc/b1;Lfc/h;Lfc/h;)Z

    move-result p0

    return p0

    :cond_2
    const/16 p0, 0x2f

    invoke-static {p0}, Lob/n;->a(I)V

    throw v0

    :cond_3
    const/16 p0, 0x2e

    invoke-static {p0}, Lob/n;->a(I)V

    throw v0
.end method

.method public static c(Lma/b;Ljava/util/LinkedHashSet;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    invoke-interface {p0}, Lma/b;->k0()Lma/b$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v1, Lma/b$a;->b:Lma/b$a;

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_1
    invoke-interface {p0}, Lma/b;->e()Ljava/util/Collection;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    invoke-interface {p0}, Lma/b;->e()Ljava/util/Collection;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lma/b;

    .line 52
    .line 53
    invoke-static {v0, p1}, Lob/n;->c(Lma/b;Ljava/util/LinkedHashSet;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    :goto_2
    return-void

    .line 58
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v1, "No overridden descriptors found for (fake override) "

    .line 63
    .line 64
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1

    .line 78
    :cond_4
    const/16 p0, 0x11

    .line 79
    .line 80
    invoke-static {p0}, Lob/n;->a(I)V

    .line 81
    .line 82
    .line 83
    const/4 p0, 0x0

    .line 84
    throw p0
.end method

.method public static d(Lma/a;)Ljava/util/ArrayList;
    .locals 2

    invoke-interface {p0}, Lma/a;->h0()Lma/o0;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lma/z0;->getType()Lcc/e0;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {p0}, Lma/a;->g()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lma/a1;

    invoke-interface {v0}, Lma/z0;->getType()Lcc/e0;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static e(Ljava/util/Collection;Lma/e;Lob/m;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1a

    .line 3
    .line 4
    if-eqz p1, :cond_19

    .line 5
    .line 6
    new-instance v1, Lob/p;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Lob/p;-><init>(Lma/e;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v1}, Lm9/t;->Y0(Ljava/lang/Iterable;Lx9/l;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object p0, v1

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const/4 v7, 0x1

    .line 35
    if-eqz v6, :cond_5

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    check-cast v6, Lma/b;

    .line 42
    .line 43
    invoke-interface {v6}, Lma/z;->j()Lma/a0;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    if-eqz v8, :cond_4

    .line 52
    .line 53
    if-eq v8, v7, :cond_3

    .line 54
    .line 55
    const/4 v6, 0x2

    .line 56
    if-eq v8, v6, :cond_2

    .line 57
    .line 58
    const/4 v6, 0x3

    .line 59
    if-eq v8, v6, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const/4 v5, 0x1

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const/4 v4, 0x1

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string p2, "Member cannot have SEALED modality: "

    .line 71
    .line 72
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p0

    .line 86
    :cond_4
    sget-object v0, Lma/a0;->a:Lma/a0;

    .line 87
    .line 88
    goto/16 :goto_8

    .line 89
    .line 90
    :cond_5
    invoke-interface {p1}, Lma/z;->G()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    sget-object v6, Lma/a0;->d:Lma/a0;

    .line 95
    .line 96
    if-eqz v1, :cond_6

    .line 97
    .line 98
    invoke-interface {p1}, Lma/e;->j()Lma/a0;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    if-eq v1, v6, :cond_6

    .line 103
    .line 104
    invoke-interface {p1}, Lma/e;->j()Lma/a0;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    sget-object v8, Lma/a0;->b:Lma/a0;

    .line 109
    .line 110
    if-eq v1, v8, :cond_6

    .line 111
    .line 112
    const/4 v3, 0x1

    .line 113
    :cond_6
    if-eqz v4, :cond_7

    .line 114
    .line 115
    if-nez v5, :cond_7

    .line 116
    .line 117
    sget-object v0, Lma/a0;->c:Lma/a0;

    .line 118
    .line 119
    goto/16 :goto_8

    .line 120
    .line 121
    :cond_7
    if-nez v4, :cond_a

    .line 122
    .line 123
    if-eqz v5, :cond_a

    .line 124
    .line 125
    if-eqz v3, :cond_8

    .line 126
    .line 127
    invoke-interface {p1}, Lma/e;->j()Lma/a0;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    :cond_8
    if-eqz v6, :cond_9

    .line 132
    .line 133
    move-object v0, v6

    .line 134
    goto/16 :goto_8

    .line 135
    .line 136
    :cond_9
    const/16 p0, 0x5c

    .line 137
    .line 138
    invoke-static {p0}, Lob/n;->a(I)V

    .line 139
    .line 140
    .line 141
    throw v0

    .line 142
    :cond_a
    new-instance v1, Ljava/util/HashSet;

    .line 143
    .line 144
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    if-eqz v5, :cond_c

    .line 156
    .line 157
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    check-cast v5, Lma/b;

    .line 162
    .line 163
    if-eqz v5, :cond_b

    .line 164
    .line 165
    new-instance v8, Ljava/util/LinkedHashSet;

    .line 166
    .line 167
    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-static {v5, v8}, Lob/n;->c(Lma/b;Ljava/util/LinkedHashSet;)V

    .line 171
    .line 172
    .line 173
    invoke-interface {v1, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_b
    const/16 p0, 0xf

    .line 178
    .line 179
    invoke-static {p0}, Lob/n;->a(I)V

    .line 180
    .line 181
    .line 182
    throw v0

    .line 183
    :cond_c
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    if-nez v4, :cond_d

    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    check-cast v4, Lma/j;

    .line 198
    .line 199
    invoke-static {v4}, Lsb/b;->j(Lma/j;)Lma/b0;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    sget-object v5, Ldc/g;->a:Lcom/airbnb/epoxy/a;

    .line 204
    .line 205
    invoke-interface {v4, v5}, Lma/b0;->G0(Lcom/airbnb/epoxy/a;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    check-cast v4, Ldc/o;

    .line 210
    .line 211
    :cond_d
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    if-gt v4, v7, :cond_e

    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_e
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 219
    .line 220
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    if-eqz v5, :cond_12

    .line 232
    .line 233
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 238
    .line 239
    .line 240
    move-result-object v7

    .line 241
    :cond_f
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 242
    .line 243
    .line 244
    move-result v8

    .line 245
    if-eqz v8, :cond_11

    .line 246
    .line 247
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v8

    .line 251
    move-object v9, v5

    .line 252
    check-cast v9, Lma/a;

    .line 253
    .line 254
    check-cast v8, Lma/a;

    .line 255
    .line 256
    invoke-static {v9, v8}, Lob/n;->q(Lma/a;Lma/a;)Z

    .line 257
    .line 258
    .line 259
    move-result v10

    .line 260
    if-eqz v10, :cond_10

    .line 261
    .line 262
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 263
    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_10
    invoke-static {v8, v9}, Lob/n;->q(Lma/a;Lma/a;)Z

    .line 267
    .line 268
    .line 269
    move-result v8

    .line 270
    if-eqz v8, :cond_f

    .line 271
    .line 272
    goto :goto_3

    .line 273
    :cond_11
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_12
    move-object v1, v4

    .line 278
    :goto_5
    invoke-interface {p1}, Lma/e;->j()Lma/a0;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    if-eqz v4, :cond_18

    .line 283
    .line 284
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    move-object v5, v6

    .line 289
    :cond_13
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 290
    .line 291
    .line 292
    move-result v7

    .line 293
    if-eqz v7, :cond_15

    .line 294
    .line 295
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v7

    .line 299
    check-cast v7, Lma/b;

    .line 300
    .line 301
    if-eqz v3, :cond_14

    .line 302
    .line 303
    invoke-interface {v7}, Lma/z;->j()Lma/a0;

    .line 304
    .line 305
    .line 306
    move-result-object v8

    .line 307
    if-ne v8, v6, :cond_14

    .line 308
    .line 309
    move-object v7, v4

    .line 310
    goto :goto_7

    .line 311
    :cond_14
    invoke-interface {v7}, Lma/z;->j()Lma/a0;

    .line 312
    .line 313
    .line 314
    move-result-object v7

    .line 315
    :goto_7
    invoke-virtual {v7, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 316
    .line 317
    .line 318
    move-result v8

    .line 319
    if-gez v8, :cond_13

    .line 320
    .line 321
    move-object v5, v7

    .line 322
    goto :goto_6

    .line 323
    :cond_15
    if-eqz v5, :cond_17

    .line 324
    .line 325
    move-object v0, v5

    .line 326
    :goto_8
    if-eqz v2, :cond_16

    .line 327
    .line 328
    sget-object v1, Lma/p;->h:Lma/p$k;

    .line 329
    .line 330
    goto :goto_9

    .line 331
    :cond_16
    sget-object v1, Lma/p;->g:Lma/p$j;

    .line 332
    .line 333
    :goto_9
    new-instance v2, Lob/o;

    .line 334
    .line 335
    invoke-direct {v2}, Lob/o;-><init>()V

    .line 336
    .line 337
    .line 338
    invoke-static {p0, v2}, Lob/n;->s(Ljava/util/Collection;Lx9/l;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    check-cast v2, Lma/b;

    .line 343
    .line 344
    invoke-interface {v2, p1, v0, v1}, Lma/b;->b0(Lma/j;Lma/a0;Lma/o;)Lma/b;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    invoke-virtual {p2, p1, p0}, Lc6/a;->s(Lma/b;Ljava/util/Collection;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p2, p1}, Lc6/a;->k(Lma/b;)V

    .line 352
    .line 353
    .line 354
    return-void

    .line 355
    :cond_17
    const/16 p0, 0x5f

    .line 356
    .line 357
    invoke-static {p0}, Lob/n;->a(I)V

    .line 358
    .line 359
    .line 360
    throw v0

    .line 361
    :cond_18
    const/16 p0, 0x5e

    .line 362
    .line 363
    invoke-static {p0}, Lob/n;->a(I)V

    .line 364
    .line 365
    .line 366
    throw v0

    .line 367
    :cond_19
    const/16 p0, 0x56

    .line 368
    .line 369
    invoke-static {p0}, Lob/n;->a(I)V

    .line 370
    .line 371
    .line 372
    throw v0

    .line 373
    :cond_1a
    const/16 p0, 0x55

    .line 374
    .line 375
    invoke-static {p0}, Lob/n;->a(I)V

    .line 376
    .line 377
    .line 378
    throw v0
.end method

.method public static g(Ljava/lang/Object;Ljava/util/LinkedList;Lx9/l;Lx9/l;)Ljava/util/ArrayList;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-eqz p2, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p2, p0}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lma/a;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lma/a;

    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1, v3}, Lob/n;->j(Lma/a;Lma/a;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    invoke-interface {p3, v2}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    const/16 p0, 0x65

    invoke-static {p0}, Lob/n;->a(I)V

    throw v0

    :cond_5
    const/16 p0, 0x63

    invoke-static {p0}, Lob/n;->a(I)V

    throw v0
.end method

.method public static i(Lma/a;Lma/a;)Lob/n$b;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_c

    .line 3
    .line 4
    if-eqz p1, :cond_b

    .line 5
    .line 6
    instance-of v1, p0, Lma/u;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    instance-of v2, p1, Lma/u;

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    :cond_0
    instance-of v2, p0, Lma/l0;

    .line 15
    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    instance-of v3, p1, Lma/l0;

    .line 19
    .line 20
    if-nez v3, :cond_2

    .line 21
    .line 22
    :cond_1
    const-string p0, "Member kind mismatch"

    .line 23
    .line 24
    :goto_0
    invoke-static {p0}, Lob/n$b;->d(Ljava/lang/String;)Lob/n$b;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_2
    if-nez v1, :cond_4

    .line 30
    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v1, "This type of CallableDescriptor cannot be checked for overridability: "

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_4
    :goto_1
    invoke-interface {p0}, Lma/j;->getName()Llb/f;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {p1}, Lma/j;->getName()Llb/f;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Llb/f;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_5

    .line 67
    .line 68
    const-string p0, "Name mismatch"

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_5
    invoke-interface {p0}, Lma/a;->h0()Lma/o0;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const/4 v2, 0x0

    .line 76
    const/4 v3, 0x1

    .line 77
    if-nez v1, :cond_6

    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    goto :goto_2

    .line 81
    :cond_6
    const/4 v1, 0x0

    .line 82
    :goto_2
    invoke-interface {p1}, Lma/a;->h0()Lma/o0;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    if-nez v4, :cond_7

    .line 87
    .line 88
    const/4 v2, 0x1

    .line 89
    :cond_7
    if-eq v1, v2, :cond_8

    .line 90
    .line 91
    const-string p0, "Receiver presence mismatch"

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_8
    invoke-interface {p0}, Lma/a;->g()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    invoke-interface {p1}, Lma/a;->g()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eq p0, p1, :cond_9

    .line 111
    .line 112
    const-string p0, "Value parameter number mismatch"

    .line 113
    .line 114
    :goto_3
    invoke-static {p0}, Lob/n$b;->d(Ljava/lang/String;)Lob/n$b;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    goto :goto_4

    .line 119
    :cond_9
    move-object p0, v0

    .line 120
    :goto_4
    if-eqz p0, :cond_a

    .line 121
    .line 122
    return-object p0

    .line 123
    :cond_a
    return-object v0

    .line 124
    :cond_b
    const/16 p0, 0x29

    .line 125
    .line 126
    invoke-static {p0}, Lob/n;->a(I)V

    .line 127
    .line 128
    .line 129
    throw v0

    .line 130
    :cond_c
    const/16 p0, 0x28

    .line 131
    .line 132
    invoke-static {p0}, Lob/n;->a(I)V

    .line 133
    .line 134
    .line 135
    throw v0
.end method

.method public static j(Lma/a;Lma/a;)I
    .locals 3

    sget-object v0, Lob/n;->f:Lob/n;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lob/n;->l(Lma/a;Lma/a;Lma/e;)Lob/n$b;

    move-result-object v2

    invoke-virtual {v2}, Lob/n$b;->c()I

    move-result v2

    invoke-virtual {v0, p0, p1, v1}, Lob/n;->l(Lma/a;Lma/a;Lma/e;)Lob/n$b;

    move-result-object p0

    invoke-virtual {p0}, Lob/n$b;->c()I

    move-result p0

    const/4 p1, 0x1

    if-ne v2, p1, :cond_0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    if-eq v2, p1, :cond_2

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :cond_2
    :goto_0
    return p1
.end method

.method public static k(Lma/a;Lma/a;)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_a

    .line 3
    .line 4
    if-eqz p1, :cond_9

    .line 5
    .line 6
    invoke-interface {p0}, Lma/a;->getReturnType()Lcc/e0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {p1}, Lma/a;->getReturnType()Lcc/e0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {p0, p1}, Lob/n;->p(Lma/n;Lma/n;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    return v3

    .line 22
    :cond_0
    invoke-interface {p0}, Lma/a;->getTypeParameters()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {p1}, Lma/a;->getTypeParameters()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    sget-object v5, Lob/n;->f:Lob/n;

    .line 31
    .line 32
    invoke-virtual {v5, v2, v4}, Lob/n;->f(Ljava/util/List;Ljava/util/List;)Lcc/b1;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    instance-of v4, p0, Lma/u;

    .line 37
    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    invoke-static {p0, v0, p1, v1, v2}, Lob/n;->o(Lma/a;Lcc/e0;Lma/a;Lcc/e0;Lcc/b1;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0

    .line 45
    :cond_1
    instance-of v4, p0, Lma/l0;

    .line 46
    .line 47
    if-eqz v4, :cond_8

    .line 48
    .line 49
    move-object v4, p0

    .line 50
    check-cast v4, Lma/l0;

    .line 51
    .line 52
    move-object v5, p1

    .line 53
    check-cast v5, Lma/l0;

    .line 54
    .line 55
    invoke-interface {v4}, Lma/l0;->f()Lma/n0;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-interface {v5}, Lma/l0;->f()Lma/n0;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    const/4 v8, 0x1

    .line 64
    if-eqz v6, :cond_3

    .line 65
    .line 66
    if-nez v7, :cond_2

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-static {v6, v7}, Lob/n;->p(Lma/n;Lma/n;)Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    :goto_0
    const/4 v6, 0x1

    .line 75
    :goto_1
    if-nez v6, :cond_4

    .line 76
    .line 77
    return v3

    .line 78
    :cond_4
    invoke-interface {v4}, Lma/b1;->f0()Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-eqz v6, :cond_5

    .line 83
    .line 84
    invoke-interface {v5}, Lma/b1;->f0()Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_5

    .line 89
    .line 90
    invoke-virtual {v0}, Lcc/e0;->P0()Lcc/s1;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {v1}, Lcc/e0;->P0()Lcc/s1;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {v2, p0, p1}, Lcc/g;->e(Lcc/b1;Lfc/h;Lfc/h;)Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    return p0

    .line 103
    :cond_5
    invoke-interface {v4}, Lma/b1;->f0()Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-nez v4, :cond_6

    .line 108
    .line 109
    invoke-interface {v5}, Lma/b1;->f0()Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-nez v4, :cond_7

    .line 114
    .line 115
    :cond_6
    invoke-static {p0, v0, p1, v1, v2}, Lob/n;->o(Lma/a;Lcc/e0;Lma/a;Lcc/e0;Lcc/b1;)Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-eqz p0, :cond_7

    .line 120
    .line 121
    const/4 v3, 0x1

    .line 122
    :cond_7
    return v3

    .line 123
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 124
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v1, "Unexpected callable: "

    .line 128
    .line 129
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw p1

    .line 147
    :cond_9
    const/16 p0, 0x44

    .line 148
    .line 149
    invoke-static {p0}, Lob/n;->a(I)V

    .line 150
    .line 151
    .line 152
    throw v0

    .line 153
    :cond_a
    const/16 p0, 0x43

    .line 154
    .line 155
    invoke-static {p0}, Lob/n;->a(I)V

    .line 156
    .line 157
    .line 158
    throw v0
.end method

.method public static o(Lma/a;Lcc/e0;Lma/a;Lcc/e0;Lcc/b1;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    sget-object p0, Lcc/g;->a:Lcc/g;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcc/e0;->P0()Lcc/s1;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p3}, Lcc/e0;->P0()Lcc/s1;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const-string p3, "subType"

    .line 21
    .line 22
    invoke-static {p1, p3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p3, "superType"

    .line 26
    .line 27
    invoke-static {p2, p3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0, p4, p1, p2}, Lcc/g;->i(Lcc/g;Lcc/b1;Lfc/h;Lfc/h;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0

    .line 35
    :cond_0
    const/16 p0, 0x4c

    .line 36
    .line 37
    invoke-static {p0}, Lob/n;->a(I)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_1
    const/16 p0, 0x4b

    .line 42
    .line 43
    invoke-static {p0}, Lob/n;->a(I)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :cond_2
    const/16 p0, 0x4a

    .line 48
    .line 49
    invoke-static {p0}, Lob/n;->a(I)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_3
    const/16 p0, 0x49

    .line 54
    .line 55
    invoke-static {p0}, Lob/n;->a(I)V

    .line 56
    .line 57
    .line 58
    throw v0
.end method

.method public static p(Lma/n;Lma/n;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lma/n;->getVisibility()Lma/q;

    move-result-object p0

    invoke-interface {p1}, Lma/n;->getVisibility()Lma/q;

    move-result-object p1

    invoke-static {p0, p1}, Lma/p;->b(Lma/q;Lma/q;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :cond_2
    const/16 p0, 0x46

    invoke-static {p0}, Lob/n;->a(I)V

    throw v0

    :cond_3
    const/16 p0, 0x45

    invoke-static {p0}, Lob/n;->a(I)V

    throw v0
.end method

.method public static q(Lma/a;Lma/a;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sget-object v1, Lob/g;->a:Lob/g;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Lma/a;->a()Lma/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {p1}, Lma/a;->a()Lma/a;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v1, v0, v4, v2, v3}, Lob/g;->a(Lma/j;Lma/j;ZZ)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    return v3

    .line 31
    :cond_0
    invoke-interface {p1}, Lma/a;->a()Lma/a;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    sget v0, Lob/i;->a:I

    .line 36
    .line 37
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-interface {p0}, Lma/a;->a()Lma/a;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0, v0}, Lob/i;->b(Lma/a;Ljava/util/LinkedHashSet;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lma/a;

    .line 64
    .line 65
    invoke-virtual {v1, p1, v0, v2, v3}, Lob/g;->a(Lma/j;Lma/j;ZZ)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    return v3

    .line 72
    :cond_2
    return v2

    .line 73
    :cond_3
    const/16 p0, 0xe

    .line 74
    .line 75
    invoke-static {p0}, Lob/n;->a(I)V

    .line 76
    .line 77
    .line 78
    throw v0

    .line 79
    :cond_4
    const/16 p0, 0xd

    .line 80
    .line 81
    invoke-static {p0}, Lob/n;->a(I)V

    .line 82
    .line 83
    .line 84
    throw v0
.end method

.method public static r(Lma/b;Lx9/l;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lma/b;",
            "Lx9/l<",
            "Lma/b;",
            "Ll9/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_19

    .line 3
    .line 4
    invoke-interface {p0}, Lma/b;->e()Ljava/util/Collection;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lma/b;

    .line 23
    .line 24
    invoke-interface {v2}, Lma/z;->getVisibility()Lma/q;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    sget-object v4, Lma/p;->g:Lma/p$j;

    .line 29
    .line 30
    if-ne v3, v4, :cond_0

    .line 31
    .line 32
    invoke-static {v2, p1}, Lob/n;->r(Lma/b;Lx9/l;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-interface {p0}, Lma/z;->getVisibility()Lma/q;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    sget-object v2, Lma/p;->g:Lma/p$j;

    .line 41
    .line 42
    if-eq v1, v2, :cond_2

    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    invoke-interface {p0}, Lma/b;->e()Ljava/util/Collection;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_18

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    sget-object v2, Lma/p;->k:Lma/p$h;

    .line 58
    .line 59
    goto :goto_5

    .line 60
    :cond_3
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    :goto_1
    move-object v3, v0

    .line 65
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_7

    .line 70
    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    check-cast v4, Lma/b;

    .line 76
    .line 77
    invoke-interface {v4}, Lma/z;->getVisibility()Lma/q;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    if-nez v3, :cond_5

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_5
    invoke-static {v4, v3}, Lma/p;->b(Lma/q;Lma/q;)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    if-nez v5, :cond_6

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-lez v5, :cond_4

    .line 96
    .line 97
    :goto_3
    move-object v3, v4

    .line 98
    goto :goto_2

    .line 99
    :cond_7
    if-nez v3, :cond_8

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_8
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-eqz v4, :cond_b

    .line 111
    .line 112
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    check-cast v4, Lma/b;

    .line 117
    .line 118
    invoke-interface {v4}, Lma/z;->getVisibility()Lma/q;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-static {v3, v4}, Lma/p;->b(Lma/q;Lma/q;)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    if-eqz v4, :cond_a

    .line 127
    .line 128
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-gez v4, :cond_9

    .line 133
    .line 134
    :cond_a
    :goto_4
    move-object v2, v0

    .line 135
    goto :goto_5

    .line 136
    :cond_b
    move-object v2, v3

    .line 137
    :goto_5
    if-nez v2, :cond_c

    .line 138
    .line 139
    goto :goto_6

    .line 140
    :cond_c
    invoke-interface {p0}, Lma/b;->k0()Lma/b$a;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    sget-object v4, Lma/b$a;->b:Lma/b$a;

    .line 145
    .line 146
    if-ne v3, v4, :cond_e

    .line 147
    .line 148
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-eqz v3, :cond_f

    .line 157
    .line 158
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    check-cast v3, Lma/b;

    .line 163
    .line 164
    invoke-interface {v3}, Lma/z;->j()Lma/a0;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    sget-object v5, Lma/a0;->d:Lma/a0;

    .line 169
    .line 170
    if-eq v4, v5, :cond_d

    .line 171
    .line 172
    invoke-interface {v3}, Lma/z;->getVisibility()Lma/q;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-nez v3, :cond_d

    .line 181
    .line 182
    :goto_6
    move-object v2, v0

    .line 183
    goto :goto_7

    .line 184
    :cond_e
    invoke-virtual {v2}, Lma/q;->d()Lma/q;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    :cond_f
    :goto_7
    if-nez v2, :cond_11

    .line 189
    .line 190
    if-eqz p1, :cond_10

    .line 191
    .line 192
    invoke-interface {p1, p0}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    :cond_10
    sget-object v1, Lma/p;->e:Lma/p$h;

    .line 196
    .line 197
    goto :goto_8

    .line 198
    :cond_11
    move-object v1, v2

    .line 199
    :goto_8
    instance-of v3, p0, Lpa/l0;

    .line 200
    .line 201
    if-eqz v3, :cond_14

    .line 202
    .line 203
    move-object v3, p0

    .line 204
    check-cast v3, Lpa/l0;

    .line 205
    .line 206
    if-eqz v1, :cond_13

    .line 207
    .line 208
    iput-object v1, v3, Lpa/l0;->k:Lma/q;

    .line 209
    .line 210
    check-cast p0, Lma/l0;

    .line 211
    .line 212
    invoke-interface {p0}, Lma/l0;->t()Ljava/util/ArrayList;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_17

    .line 225
    .line 226
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    check-cast v1, Lma/k0;

    .line 231
    .line 232
    if-nez v2, :cond_12

    .line 233
    .line 234
    move-object v3, v0

    .line 235
    goto :goto_a

    .line 236
    :cond_12
    move-object v3, p1

    .line 237
    :goto_a
    invoke-static {v1, v3}, Lob/n;->r(Lma/b;Lx9/l;)V

    .line 238
    .line 239
    .line 240
    goto :goto_9

    .line 241
    :cond_13
    const/16 p0, 0x14

    .line 242
    .line 243
    invoke-static {p0}, Lpa/l0;->C(I)V

    .line 244
    .line 245
    .line 246
    throw v0

    .line 247
    :cond_14
    instance-of p1, p0, Lpa/x;

    .line 248
    .line 249
    if-eqz p1, :cond_16

    .line 250
    .line 251
    check-cast p0, Lpa/x;

    .line 252
    .line 253
    if-eqz v1, :cond_15

    .line 254
    .line 255
    iput-object v1, p0, Lpa/x;->m:Lma/q;

    .line 256
    .line 257
    goto :goto_b

    .line 258
    :cond_15
    const/16 p0, 0xa

    .line 259
    .line 260
    invoke-static {p0}, Lpa/x;->C(I)V

    .line 261
    .line 262
    .line 263
    throw v0

    .line 264
    :cond_16
    check-cast p0, Lpa/k0;

    .line 265
    .line 266
    iput-object v1, p0, Lpa/k0;->l:Lma/q;

    .line 267
    .line 268
    invoke-virtual {p0}, Lpa/k0;->A0()Lma/l0;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-interface {p1}, Lma/z;->getVisibility()Lma/q;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    if-eq v1, p1, :cond_17

    .line 277
    .line 278
    const/4 p1, 0x0

    .line 279
    iput-boolean p1, p0, Lpa/k0;->e:Z

    .line 280
    .line 281
    :cond_17
    :goto_b
    return-void

    .line 282
    :cond_18
    const/16 p0, 0x6d

    .line 283
    .line 284
    invoke-static {p0}, Lob/n;->a(I)V

    .line 285
    .line 286
    .line 287
    throw v0

    .line 288
    :cond_19
    const/16 p0, 0x6b

    .line 289
    .line 290
    invoke-static {p0}, Lob/n;->a(I)V

    .line 291
    .line 292
    .line 293
    throw v0
.end method

.method public static s(Ljava/util/Collection;Lx9/l;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<H:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TH;>;",
            "Lx9/l<",
            "TH;",
            "Lma/a;",
            ">;)TH;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_11

    .line 3
    .line 4
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v1, v2, :cond_1

    .line 10
    .line 11
    invoke-static {p0}, Lm9/t;->Z0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    const/16 p0, 0x50

    .line 19
    .line 20
    invoke-static {p0}, Lob/n;->a(I)V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    .line 29
    .line 30
    new-instance v3, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-static {p0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-interface {p1, v5}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-static {p0}, Lm9/t;->Z0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-interface {p1, v4}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Lma/a;

    .line 70
    .line 71
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_8

    .line 80
    .line 81
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-interface {p1, v6}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    check-cast v7, Lma/a;

    .line 90
    .line 91
    if-eqz v7, :cond_7

    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    if-eqz v9, :cond_5

    .line 102
    .line 103
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    check-cast v9, Lma/a;

    .line 108
    .line 109
    invoke-static {v7, v9}, Lob/n;->k(Lma/a;Lma/a;)Z

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    if-nez v9, :cond_4

    .line 114
    .line 115
    const/4 v8, 0x0

    .line 116
    goto :goto_2

    .line 117
    :cond_5
    const/4 v8, 0x1

    .line 118
    :goto_2
    if-eqz v8, :cond_6

    .line 119
    .line 120
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    :cond_6
    invoke-static {v7, v5}, Lob/n;->k(Lma/a;Lma/a;)Z

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    if-eqz v8, :cond_3

    .line 128
    .line 129
    invoke-static {v5, v7}, Lob/n;->k(Lma/a;Lma/a;)Z

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    if-nez v7, :cond_3

    .line 134
    .line 135
    move-object v4, v6

    .line 136
    goto :goto_1

    .line 137
    :cond_7
    const/16 p0, 0x47

    .line 138
    .line 139
    invoke-static {p0}, Lob/n;->a(I)V

    .line 140
    .line 141
    .line 142
    throw v0

    .line 143
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    if-eqz p0, :cond_a

    .line 148
    .line 149
    if-eqz v4, :cond_9

    .line 150
    .line 151
    return-object v4

    .line 152
    :cond_9
    const/16 p0, 0x51

    .line 153
    .line 154
    invoke-static {p0}, Lob/n;->a(I)V

    .line 155
    .line 156
    .line 157
    throw v0

    .line 158
    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 159
    .line 160
    .line 161
    move-result p0

    .line 162
    if-ne p0, v2, :cond_c

    .line 163
    .line 164
    invoke-static {v1}, Lm9/t;->Z0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    if-eqz p0, :cond_b

    .line 169
    .line 170
    return-object p0

    .line 171
    :cond_b
    const/16 p0, 0x52

    .line 172
    .line 173
    invoke-static {p0}, Lob/n;->a(I)V

    .line 174
    .line 175
    .line 176
    throw v0

    .line 177
    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eqz v2, :cond_e

    .line 186
    .line 187
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-interface {p1, v2}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    check-cast v3, Lma/a;

    .line 196
    .line 197
    invoke-interface {v3}, Lma/a;->getReturnType()Lcc/e0;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-static {v3}, Lc5/v;->z(Lcc/e0;)Z

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    if-nez v3, :cond_d

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_e
    move-object v2, v0

    .line 209
    :goto_3
    if-eqz v2, :cond_f

    .line 210
    .line 211
    return-object v2

    .line 212
    :cond_f
    invoke-static {v1}, Lm9/t;->Z0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    if-eqz p0, :cond_10

    .line 217
    .line 218
    return-object p0

    .line 219
    :cond_10
    const/16 p0, 0x54

    .line 220
    .line 221
    invoke-static {p0}, Lob/n;->a(I)V

    .line 222
    .line 223
    .line 224
    throw v0

    .line 225
    :cond_11
    const/16 p0, 0x4f

    .line 226
    .line 227
    invoke-static {p0}, Lob/n;->a(I)V

    .line 228
    .line 229
    .line 230
    throw v0
.end method


# virtual methods
.method public final f(Ljava/util/List;Ljava/util/List;)Lcc/b1;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lma/w0;",
            ">;",
            "Ljava/util/List<",
            "Lma/w0;",
            ">;)",
            "Lcc/b1;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    if-eqz p2, :cond_4

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, "kotlinTypeRefiner"

    .line 11
    .line 12
    const-string v2, "kotlinTypePreparator"

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    new-instance p1, Lob/t;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    iget-object v5, p0, Lob/n;->c:Ldc/d$a;

    .line 20
    .line 21
    iget-object v6, p0, Lob/n;->a:Ldc/f;

    .line 22
    .line 23
    iget-object v7, p0, Lob/n;->b:Ldc/e;

    .line 24
    .line 25
    iget-object v8, p0, Lob/n;->d:Lx9/p;

    .line 26
    .line 27
    move-object v3, p1

    .line 28
    invoke-direct/range {v3 .. v8}, Lob/t;-><init>(Ljava/util/HashMap;Ldc/d$a;Ldc/f;Ldc/e;Lx9/p;)V

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    const/4 v5, 0x1

    .line 33
    iget-object p2, p1, Lob/t;->e:Lx9/p;

    .line 34
    .line 35
    iget-object v8, p1, Lob/t;->c:Ldc/f;

    .line 36
    .line 37
    iget-object v7, p1, Lob/t;->d:Ldc/e;

    .line 38
    .line 39
    if-nez p2, :cond_0

    .line 40
    .line 41
    invoke-static {v7, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v8, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance p2, Lcc/b1;

    .line 48
    .line 49
    move-object v3, p2

    .line 50
    move-object v6, p1

    .line 51
    invoke-direct/range {v3 .. v8}, Lcc/b1;-><init>(ZZLfc/n;Lc6/a;Lc6/a;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    new-instance p2, Lob/s;

    .line 56
    .line 57
    invoke-direct {p2, p1, v7, v8}, Lob/s;-><init>(Lob/t;Ldc/e;Ldc/f;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-object p2

    .line 61
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 64
    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-ge v0, v3, :cond_2

    .line 72
    .line 73
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Lma/w0;

    .line 78
    .line 79
    invoke-interface {v3}, Lma/w0;->i()Lcc/c1;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    check-cast v5, Lma/w0;

    .line 88
    .line 89
    invoke-interface {v5}, Lma/w0;->i()Lcc/c1;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    add-int/lit8 v0, v0, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    new-instance p1, Lob/t;

    .line 100
    .line 101
    iget-object v5, p0, Lob/n;->c:Ldc/d$a;

    .line 102
    .line 103
    iget-object v6, p0, Lob/n;->a:Ldc/f;

    .line 104
    .line 105
    iget-object v7, p0, Lob/n;->b:Ldc/e;

    .line 106
    .line 107
    iget-object v8, p0, Lob/n;->d:Lx9/p;

    .line 108
    .line 109
    move-object v3, p1

    .line 110
    invoke-direct/range {v3 .. v8}, Lob/t;-><init>(Ljava/util/HashMap;Ldc/d$a;Ldc/f;Ldc/e;Lx9/p;)V

    .line 111
    .line 112
    .line 113
    const/4 v6, 0x1

    .line 114
    const/4 v7, 0x1

    .line 115
    iget-object p2, p1, Lob/t;->e:Lx9/p;

    .line 116
    .line 117
    iget-object v10, p1, Lob/t;->c:Ldc/f;

    .line 118
    .line 119
    iget-object v9, p1, Lob/t;->d:Ldc/e;

    .line 120
    .line 121
    if-nez p2, :cond_3

    .line 122
    .line 123
    invoke-static {v9, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v10, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    new-instance p2, Lcc/b1;

    .line 130
    .line 131
    move-object v5, p2

    .line 132
    move-object v8, p1

    .line 133
    invoke-direct/range {v5 .. v10}, Lcc/b1;-><init>(ZZLfc/n;Lc6/a;Lc6/a;)V

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_3
    new-instance p2, Lob/s;

    .line 138
    .line 139
    invoke-direct {p2, p1, v9, v10}, Lob/s;-><init>(Lob/t;Ldc/e;Ldc/f;)V

    .line 140
    .line 141
    .line 142
    :goto_2
    return-object p2

    .line 143
    :cond_4
    const/16 p1, 0x2b

    .line 144
    .line 145
    invoke-static {p1}, Lob/n;->a(I)V

    .line 146
    .line 147
    .line 148
    throw v0

    .line 149
    :cond_5
    const/16 p1, 0x2a

    .line 150
    .line 151
    invoke-static {p1}, Lob/n;->a(I)V

    .line 152
    .line 153
    .line 154
    throw v0
.end method

.method public final h(Llb/f;Ljava/util/Collection;Ljava/util/Collection;Lma/e;Lob/m;)V
    .locals 17

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz p1, :cond_15

    .line 9
    .line 10
    if-eqz v0, :cond_14

    .line 11
    .line 12
    if-eqz p3, :cond_13

    .line 13
    .line 14
    if-eqz v1, :cond_12

    .line 15
    .line 16
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 17
    .line 18
    invoke-direct {v4, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    const/4 v8, 0x0

    .line 30
    const/4 v9, 0x2

    .line 31
    if-eqz v6, :cond_7

    .line 32
    .line 33
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    check-cast v6, Lma/b;

    .line 38
    .line 39
    if-eqz v6, :cond_6

    .line 40
    .line 41
    new-instance v10, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    .line 44
    .line 45
    .line 46
    move-result v11

    .line 47
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .line 49
    .line 50
    new-instance v11, Lkc/d;

    .line 51
    .line 52
    invoke-direct {v11}, Lkc/d;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v12

    .line 59
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v13

    .line 63
    if-eqz v13, :cond_5

    .line 64
    .line 65
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v13

    .line 69
    check-cast v13, Lma/b;

    .line 70
    .line 71
    move-object/from16 v14, p0

    .line 72
    .line 73
    invoke-virtual {v14, v13, v6, v1}, Lob/n;->l(Lma/a;Lma/a;Lma/e;)Lob/n$b;

    .line 74
    .line 75
    .line 76
    move-result-object v15

    .line 77
    invoke-virtual {v15}, Lob/n$b;->c()I

    .line 78
    .line 79
    .line 80
    move-result v15

    .line 81
    invoke-interface {v13}, Lma/z;->getVisibility()Lma/q;

    .line 82
    .line 83
    .line 84
    move-result-object v16

    .line 85
    invoke-static/range {v16 .. v16}, Lma/p;->e(Lma/q;)Z

    .line 86
    .line 87
    .line 88
    move-result v16

    .line 89
    if-nez v16, :cond_1

    .line 90
    .line 91
    sget-object v7, Lma/p;->m:Lma/p$b;

    .line 92
    .line 93
    invoke-static {v7, v13, v6}, Lma/p;->c(Lma/p$b;Lma/n;Lma/j;)Lma/n;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    if-nez v7, :cond_0

    .line 98
    .line 99
    const/4 v7, 0x1

    .line 100
    goto :goto_2

    .line 101
    :cond_0
    const/4 v7, 0x0

    .line 102
    :goto_2
    if-eqz v7, :cond_1

    .line 103
    .line 104
    const/4 v7, 0x1

    .line 105
    goto :goto_3

    .line 106
    :cond_1
    const/4 v7, 0x0

    .line 107
    :goto_3
    invoke-static {v15}, Lg/d;->c(I)I

    .line 108
    .line 109
    .line 110
    move-result v15

    .line 111
    if-eqz v15, :cond_3

    .line 112
    .line 113
    if-eq v15, v9, :cond_2

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_2
    if-eqz v7, :cond_4

    .line 117
    .line 118
    invoke-virtual {v2, v13, v6}, Lob/m;->t(Lma/b;Lma/b;)V

    .line 119
    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_3
    if-eqz v7, :cond_4

    .line 123
    .line 124
    invoke-virtual {v11, v13}, Lkc/d;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    :cond_4
    :goto_4
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_5
    move-object/from16 v14, p0

    .line 132
    .line 133
    invoke-virtual {v2, v6, v11}, Lc6/a;->s(Lma/b;Ljava/util/Collection;)V

    .line 134
    .line 135
    .line 136
    invoke-interface {v4, v10}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_6
    move-object/from16 v14, p0

    .line 141
    .line 142
    const/16 v0, 0x3b

    .line 143
    .line 144
    invoke-static {v0}, Lob/n;->a(I)V

    .line 145
    .line 146
    .line 147
    throw v3

    .line 148
    :cond_7
    move-object/from16 v14, p0

    .line 149
    .line 150
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-ge v0, v9, :cond_8

    .line 155
    .line 156
    goto :goto_6

    .line 157
    :cond_8
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    check-cast v0, Lma/b;

    .line 166
    .line 167
    invoke-interface {v0}, Lma/k;->b()Lma/j;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    if-eqz v5, :cond_9

    .line 176
    .line 177
    goto :goto_6

    .line 178
    :cond_9
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    if-eqz v6, :cond_c

    .line 187
    .line 188
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    check-cast v6, Lma/b;

    .line 193
    .line 194
    invoke-interface {v6}, Lma/k;->b()Lma/j;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    if-ne v6, v0, :cond_b

    .line 199
    .line 200
    const/4 v6, 0x1

    .line 201
    goto :goto_5

    .line 202
    :cond_b
    const/4 v6, 0x0

    .line 203
    :goto_5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    if-nez v6, :cond_a

    .line 212
    .line 213
    const/4 v7, 0x0

    .line 214
    goto :goto_7

    .line 215
    :cond_c
    :goto_6
    const/4 v7, 0x1

    .line 216
    :goto_7
    if-eqz v7, :cond_d

    .line 217
    .line 218
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    if-eqz v3, :cond_11

    .line 227
    .line 228
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    check-cast v3, Lma/b;

    .line 233
    .line 234
    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-static {v3, v1, v2}, Lob/n;->e(Ljava/util/Collection;Lma/e;Lob/m;)V

    .line 239
    .line 240
    .line 241
    goto :goto_8

    .line 242
    :cond_d
    new-instance v0, Ljava/util/LinkedList;

    .line 243
    .line 244
    invoke-direct {v0, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 245
    .line 246
    .line 247
    :goto_9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    if-nez v4, :cond_11

    .line 252
    .line 253
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 254
    .line 255
    .line 256
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    move-object v5, v3

    .line 261
    :cond_e
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    if-eqz v6, :cond_10

    .line 266
    .line 267
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    check-cast v6, Lma/b;

    .line 272
    .line 273
    if-nez v5, :cond_f

    .line 274
    .line 275
    goto :goto_b

    .line 276
    :cond_f
    invoke-interface {v5}, Lma/z;->getVisibility()Lma/q;

    .line 277
    .line 278
    .line 279
    move-result-object v7

    .line 280
    invoke-interface {v6}, Lma/z;->getVisibility()Lma/q;

    .line 281
    .line 282
    .line 283
    move-result-object v8

    .line 284
    invoke-static {v7, v8}, Lma/p;->b(Lma/q;Lma/q;)Ljava/lang/Integer;

    .line 285
    .line 286
    .line 287
    move-result-object v7

    .line 288
    if-eqz v7, :cond_e

    .line 289
    .line 290
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 291
    .line 292
    .line 293
    move-result v7

    .line 294
    if-gez v7, :cond_e

    .line 295
    .line 296
    :goto_b
    move-object v5, v6

    .line 297
    goto :goto_a

    .line 298
    :cond_10
    invoke-static {v5}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    new-instance v4, Lob/q;

    .line 302
    .line 303
    invoke-direct {v4}, Lob/q;-><init>()V

    .line 304
    .line 305
    .line 306
    new-instance v6, Lob/r;

    .line 307
    .line 308
    invoke-direct {v6, v2, v5}, Lob/r;-><init>(Lob/m;Lma/b;)V

    .line 309
    .line 310
    .line 311
    invoke-static {v5, v0, v4, v6}, Lob/n;->g(Ljava/lang/Object;Ljava/util/LinkedList;Lx9/l;Lx9/l;)Ljava/util/ArrayList;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    invoke-static {v4, v1, v2}, Lob/n;->e(Ljava/util/Collection;Lma/e;Lob/m;)V

    .line 316
    .line 317
    .line 318
    goto :goto_9

    .line 319
    :cond_11
    return-void

    .line 320
    :cond_12
    move-object/from16 v14, p0

    .line 321
    .line 322
    const/16 v0, 0x37

    .line 323
    .line 324
    invoke-static {v0}, Lob/n;->a(I)V

    .line 325
    .line 326
    .line 327
    throw v3

    .line 328
    :cond_13
    move-object/from16 v14, p0

    .line 329
    .line 330
    const/16 v0, 0x36

    .line 331
    .line 332
    invoke-static {v0}, Lob/n;->a(I)V

    .line 333
    .line 334
    .line 335
    throw v3

    .line 336
    :cond_14
    move-object/from16 v14, p0

    .line 337
    .line 338
    const/16 v0, 0x35

    .line 339
    .line 340
    invoke-static {v0}, Lob/n;->a(I)V

    .line 341
    .line 342
    .line 343
    throw v3

    .line 344
    :cond_15
    move-object/from16 v14, p0

    .line 345
    .line 346
    const/16 v0, 0x34

    .line 347
    .line 348
    invoke-static {v0}, Lob/n;->a(I)V

    .line 349
    .line 350
    .line 351
    throw v3
.end method

.method public final l(Lma/a;Lma/a;Lma/e;)Lob/n$b;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Lob/n;->m(Lma/a;Lma/a;Lma/e;Z)Lob/n$b;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p1, 0x15

    invoke-static {p1}, Lob/n;->a(I)V

    throw v0

    :cond_1
    const/16 p1, 0x14

    invoke-static {p1}, Lob/n;->a(I)V

    throw v0

    :cond_2
    const/16 p1, 0x13

    invoke-static {p1}, Lob/n;->a(I)V

    throw v0
.end method

.method public final m(Lma/a;Lma/a;Lma/e;Z)Lob/n$b;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v4, p0

    .line 8
    .line 9
    if-eqz v0, :cond_f

    .line 10
    .line 11
    if-eqz v1, :cond_e

    .line 12
    .line 13
    move/from16 v5, p4

    .line 14
    .line 15
    invoke-virtual {v4, v0, v1, v5}, Lob/n;->n(Lma/a;Lma/a;Z)Lob/n$b;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-virtual {v5}, Lob/n$b;->c()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v8, 0x1

    .line 25
    if-ne v6, v8, :cond_0

    .line 26
    .line 27
    const/4 v6, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v6, 0x0

    .line 30
    :goto_0
    sget-object v9, Lob/n;->e:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v10

    .line 36
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v11

    .line 40
    sget-object v12, Lob/j$a;->a:Lob/j$a;

    .line 41
    .line 42
    const-string v13, "External condition"

    .line 43
    .line 44
    const-string v14, "External condition failed"

    .line 45
    .line 46
    const/4 v15, 0x2

    .line 47
    if-eqz v11, :cond_6

    .line 48
    .line 49
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v11

    .line 53
    check-cast v11, Lob/j;

    .line 54
    .line 55
    invoke-interface {v11}, Lob/j;->a()Lob/j$a;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-ne v3, v12, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    if-eqz v6, :cond_2

    .line 63
    .line 64
    invoke-interface {v11}, Lob/j;->a()Lob/j$a;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    sget-object v12, Lob/j$a;->b:Lob/j$a;

    .line 69
    .line 70
    if-ne v3, v12, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    invoke-interface {v11, v0, v1, v2}, Lob/j;->b(Lma/a;Lma/a;Lma/e;)Lob/j$b;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_5

    .line 82
    .line 83
    if-eq v3, v8, :cond_4

    .line 84
    .line 85
    if-eq v3, v15, :cond_3

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    invoke-static {v13}, Lob/n$b;->d(Ljava/lang/String;)Lob/n$b;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    return-object v0

    .line 93
    :cond_4
    invoke-static {v14}, Lob/n$b;->b(Ljava/lang/String;)Lob/n$b;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    return-object v0

    .line 98
    :cond_5
    const/4 v6, 0x1

    .line 99
    goto :goto_1

    .line 100
    :cond_6
    if-nez v6, :cond_7

    .line 101
    .line 102
    return-object v5

    .line 103
    :cond_7
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_c

    .line 112
    .line 113
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    check-cast v5, Lob/j;

    .line 118
    .line 119
    invoke-interface {v5}, Lob/j;->a()Lob/j$a;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    if-eq v6, v12, :cond_8

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_8
    invoke-interface {v5, v0, v1, v2}, Lob/j;->b(Lma/a;Lma/a;Lma/e;)Lob/j$b;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-eqz v6, :cond_b

    .line 135
    .line 136
    if-eq v6, v8, :cond_a

    .line 137
    .line 138
    if-eq v6, v15, :cond_9

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_9
    invoke-static {v13}, Lob/n$b;->d(Ljava/lang/String;)Lob/n$b;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    return-object v0

    .line 146
    :cond_a
    invoke-static {v14}, Lob/n$b;->b(Ljava/lang/String;)Lob/n$b;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    return-object v0

    .line 151
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 152
    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string v2, "Contract violation in "

    .line 156
    .line 157
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v2, " condition. It\'s not supposed to end with success"

    .line 172
    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw v0

    .line 184
    :cond_c
    sget-object v0, Lob/n$b;->b:Lob/n$b;

    .line 185
    .line 186
    if-eqz v0, :cond_d

    .line 187
    .line 188
    return-object v0

    .line 189
    :cond_d
    invoke-static {v7}, Lob/n$b;->a(I)V

    .line 190
    .line 191
    .line 192
    const/4 v0, 0x0

    .line 193
    throw v0

    .line 194
    :cond_e
    const/4 v0, 0x0

    .line 195
    const/16 v1, 0x17

    .line 196
    .line 197
    invoke-static {v1}, Lob/n;->a(I)V

    .line 198
    .line 199
    .line 200
    throw v0

    .line 201
    :cond_f
    const/4 v0, 0x0

    .line 202
    const/16 v1, 0x16

    .line 203
    .line 204
    invoke-static {v1}, Lob/n;->a(I)V

    .line 205
    .line 206
    .line 207
    throw v0
.end method

.method public final n(Lma/a;Lma/a;Z)Lob/n$b;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_13

    .line 7
    .line 8
    if-eqz v1, :cond_12

    .line 9
    .line 10
    invoke-static/range {p1 .. p2}, Lob/n;->i(Lma/a;Lma/a;)Lob/n$b;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    return-object v3

    .line 17
    :cond_0
    invoke-static/range {p1 .. p1}, Lob/n;->d(Lma/a;)Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static/range {p2 .. p2}, Lob/n;->d(Lma/a;)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-interface/range {p1 .. p1}, Lma/a;->getTypeParameters()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-interface/range {p2 .. p2}, Lma/a;->getTypeParameters()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    const/4 v9, 0x0

    .line 42
    if-eq v7, v8, :cond_3

    .line 43
    .line 44
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const-string v1, "Type parameter number mismatch"

    .line 49
    .line 50
    if-ge v9, v0, :cond_2

    .line 51
    .line 52
    sget-object v0, Ldc/d;->a:Ldc/m;

    .line 53
    .line 54
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lcc/e0;

    .line 59
    .line 60
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    check-cast v5, Lcc/e0;

    .line 65
    .line 66
    invoke-virtual {v0, v2, v5}, Ldc/m;->c(Lcc/e0;Lcc/e0;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_1

    .line 71
    .line 72
    invoke-static {v1}, Lob/n$b;->d(Ljava/lang/String;)Lob/n$b;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0

    .line 77
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-static {v1}, Lob/n$b;->b(Ljava/lang/String;)Lob/n$b;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    return-object v0

    .line 85
    :cond_3
    move-object/from16 v7, p0

    .line 86
    .line 87
    invoke-virtual {v7, v5, v6}, Lob/n;->f(Ljava/util/List;Ljava/util/List;)Lcc/b1;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    const/4 v10, 0x0

    .line 92
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    if-ge v10, v11, :cond_b

    .line 97
    .line 98
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    check-cast v11, Lma/w0;

    .line 103
    .line 104
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v13

    .line 108
    check-cast v13, Lma/w0;

    .line 109
    .line 110
    if-eqz v11, :cond_a

    .line 111
    .line 112
    if-eqz v13, :cond_9

    .line 113
    .line 114
    invoke-interface {v11}, Lma/w0;->getUpperBounds()Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    new-instance v14, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-interface {v13}, Lma/w0;->getUpperBounds()Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v13

    .line 124
    invoke-direct {v14, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 125
    .line 126
    .line 127
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 128
    .line 129
    .line 130
    move-result v13

    .line 131
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 132
    .line 133
    .line 134
    move-result v15

    .line 135
    if-eq v13, v15, :cond_4

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_4
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v11

    .line 142
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v13

    .line 146
    if-eqz v13, :cond_7

    .line 147
    .line 148
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v13

    .line 152
    check-cast v13, Lcc/e0;

    .line 153
    .line 154
    invoke-virtual {v14}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 155
    .line 156
    .line 157
    move-result-object v15

    .line 158
    :cond_5
    invoke-interface {v15}, Ljava/util/ListIterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v16

    .line 162
    if-eqz v16, :cond_6

    .line 163
    .line 164
    invoke-interface {v15}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v16

    .line 168
    move-object/from16 v12, v16

    .line 169
    .line 170
    check-cast v12, Lcc/e0;

    .line 171
    .line 172
    invoke-static {v13, v12, v8}, Lob/n;->b(Lcc/e0;Lcc/e0;Lcc/b1;)Z

    .line 173
    .line 174
    .line 175
    move-result v12

    .line 176
    if-eqz v12, :cond_5

    .line 177
    .line 178
    invoke-interface {v15}, Ljava/util/ListIterator;->remove()V

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_6
    :goto_3
    const/4 v12, 0x0

    .line 183
    goto :goto_4

    .line 184
    :cond_7
    const/4 v12, 0x1

    .line 185
    :goto_4
    if-nez v12, :cond_8

    .line 186
    .line 187
    const-string v0, "Type parameter bounds mismatch"

    .line 188
    .line 189
    invoke-static {v0}, Lob/n$b;->d(Ljava/lang/String;)Lob/n$b;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    return-object v0

    .line 194
    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_9
    const/16 v0, 0x32

    .line 198
    .line 199
    invoke-static {v0}, Lob/n;->a(I)V

    .line 200
    .line 201
    .line 202
    throw v2

    .line 203
    :cond_a
    const/16 v0, 0x31

    .line 204
    .line 205
    invoke-static {v0}, Lob/n;->a(I)V

    .line 206
    .line 207
    .line 208
    throw v2

    .line 209
    :cond_b
    const/4 v5, 0x0

    .line 210
    :goto_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    if-ge v5, v6, :cond_d

    .line 215
    .line 216
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    check-cast v6, Lcc/e0;

    .line 221
    .line 222
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v10

    .line 226
    check-cast v10, Lcc/e0;

    .line 227
    .line 228
    invoke-static {v6, v10, v8}, Lob/n;->b(Lcc/e0;Lcc/e0;Lcc/b1;)Z

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    if-nez v6, :cond_c

    .line 233
    .line 234
    const-string v0, "Value parameter type mismatch"

    .line 235
    .line 236
    invoke-static {v0}, Lob/n$b;->d(Ljava/lang/String;)Lob/n$b;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    return-object v0

    .line 241
    :cond_c
    add-int/lit8 v5, v5, 0x1

    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_d
    instance-of v3, v0, Lma/u;

    .line 245
    .line 246
    if-eqz v3, :cond_e

    .line 247
    .line 248
    instance-of v3, v1, Lma/u;

    .line 249
    .line 250
    if-eqz v3, :cond_e

    .line 251
    .line 252
    move-object v3, v0

    .line 253
    check-cast v3, Lma/u;

    .line 254
    .line 255
    invoke-interface {v3}, Lma/u;->isSuspend()Z

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    move-object v4, v1

    .line 260
    check-cast v4, Lma/u;

    .line 261
    .line 262
    invoke-interface {v4}, Lma/u;->isSuspend()Z

    .line 263
    .line 264
    .line 265
    move-result v4

    .line 266
    if-eq v3, v4, :cond_e

    .line 267
    .line 268
    const-string v0, "Incompatible suspendability"

    .line 269
    .line 270
    invoke-static {v0}, Lob/n$b;->b(Ljava/lang/String;)Lob/n$b;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    return-object v0

    .line 275
    :cond_e
    if-eqz p3, :cond_10

    .line 276
    .line 277
    invoke-interface/range {p1 .. p1}, Lma/a;->getReturnType()Lcc/e0;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-interface/range {p2 .. p2}, Lma/a;->getReturnType()Lcc/e0;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    if-eqz v0, :cond_10

    .line 286
    .line 287
    if-eqz v1, :cond_10

    .line 288
    .line 289
    invoke-static {v1}, Lc5/v;->y(Lcc/e0;)Z

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    if-eqz v3, :cond_f

    .line 294
    .line 295
    invoke-static {v0}, Lc5/v;->y(Lcc/e0;)Z

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    if-eqz v3, :cond_f

    .line 300
    .line 301
    const/4 v12, 0x1

    .line 302
    goto :goto_6

    .line 303
    :cond_f
    const/4 v12, 0x0

    .line 304
    :goto_6
    if-nez v12, :cond_10

    .line 305
    .line 306
    sget-object v3, Lcc/g;->a:Lcc/g;

    .line 307
    .line 308
    invoke-virtual {v1}, Lcc/e0;->P0()Lcc/s1;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-virtual {v0}, Lcc/e0;->P0()Lcc/s1;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    const-string v4, "subType"

    .line 317
    .line 318
    invoke-static {v1, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    const-string v4, "superType"

    .line 322
    .line 323
    invoke-static {v0, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-static {v3, v8, v1, v0}, Lcc/g;->i(Lcc/g;Lcc/b1;Lfc/h;Lfc/h;)Z

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    if-nez v0, :cond_10

    .line 331
    .line 332
    const-string v0, "Return type mismatch"

    .line 333
    .line 334
    invoke-static {v0}, Lob/n$b;->b(Ljava/lang/String;)Lob/n$b;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    return-object v0

    .line 339
    :cond_10
    sget-object v0, Lob/n$b;->b:Lob/n$b;

    .line 340
    .line 341
    if-eqz v0, :cond_11

    .line 342
    .line 343
    return-object v0

    .line 344
    :cond_11
    invoke-static {v9}, Lob/n$b;->a(I)V

    .line 345
    .line 346
    .line 347
    throw v2

    .line 348
    :cond_12
    move-object/from16 v7, p0

    .line 349
    .line 350
    const/16 v0, 0x1f

    .line 351
    .line 352
    invoke-static {v0}, Lob/n;->a(I)V

    .line 353
    .line 354
    .line 355
    throw v2

    .line 356
    :cond_13
    move-object/from16 v7, p0

    .line 357
    .line 358
    const/16 v0, 0x1e

    .line 359
    .line 360
    invoke-static {v0}, Lob/n;->a(I)V

    .line 361
    .line 362
    .line 363
    throw v2
.end method
