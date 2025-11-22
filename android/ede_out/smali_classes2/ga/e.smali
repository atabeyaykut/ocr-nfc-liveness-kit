.class public final Lga/e;
.super Lga/s;
.source "SourceFile"


# static fields
.field public static final b:Lga/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lga/e;

    invoke-direct {v0}, Lga/e;-><init>()V

    sput-object v0, Lga/e;->b:Lga/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lga/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final g()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    new-instance v0, Ll9/f;

    const-string v1, "Introspecting local functions, lambdas, anonymous functions, local variables and typealiases is not yet fully supported in Kotlin reflection"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ll9/f;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final n()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lma/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Ll9/f;

    const-string v1, "Introspecting local functions, lambdas, anonymous functions, local variables and typealiases is not yet fully supported in Kotlin reflection"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ll9/f;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final o(Llb/f;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llb/f;",
            ")",
            "Ljava/util/Collection<",
            "Lma/u;",
            ">;"
        }
    .end annotation

    new-instance p1, Ll9/f;

    const-string v0, "Introspecting local functions, lambdas, anonymous functions, local variables and typealiases is not yet fully supported in Kotlin reflection"

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Ll9/f;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public final p(I)Lma/l0;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final s(Llb/f;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llb/f;",
            ")",
            "Ljava/util/Collection<",
            "Lma/l0;",
            ">;"
        }
    .end annotation

    new-instance p1, Ll9/f;

    const-string v0, "Introspecting local functions, lambdas, anonymous functions, local variables and typealiases is not yet fully supported in Kotlin reflection"

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Ll9/f;-><init>(Ljava/lang/String;I)V

    throw p1
.end method
