.class public final Lic/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Llb/f;

.field public final b:Lmc/d;

.field public final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Llb/f;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "Lma/u;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:[Lic/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/util/Collection;[Lic/f;Lx9/l;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Llb/f;",
            ">;[",
            "Lic/f;",
            "Lx9/l<",
            "-",
            "Lma/u;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "nameList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalChecks"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, [Lic/f;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lic/k;-><init>(Llb/f;Lmc/d;Ljava/util/Collection;Lx9/l;[Lic/f;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;[Lic/f;)V
    .locals 1

    sget-object v0, Lic/j;->a:Lic/j;

    invoke-direct {p0, p1, p2, v0}, Lic/k;-><init>(Ljava/util/Collection;[Lic/f;Lx9/l;)V

    return-void
.end method

.method public varargs constructor <init>(Llb/f;Lmc/d;Ljava/util/Collection;Lx9/l;[Lic/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llb/f;",
            "Lmc/d;",
            "Ljava/util/Collection<",
            "Llb/f;",
            ">;",
            "Lx9/l<",
            "-",
            "Lma/u;",
            "Ljava/lang/String;",
            ">;[",
            "Lic/f;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lic/k;->a:Llb/f;

    iput-object p2, p0, Lic/k;->b:Lmc/d;

    iput-object p3, p0, Lic/k;->c:Ljava/util/Collection;

    iput-object p4, p0, Lic/k;->d:Lx9/l;

    iput-object p5, p0, Lic/k;->e:[Lic/f;

    return-void
.end method

.method public synthetic constructor <init>(Llb/f;[Lic/f;)V
    .locals 1

    sget-object v0, Lic/h;->a:Lic/h;

    invoke-direct {p0, p1, p2, v0}, Lic/k;-><init>(Llb/f;[Lic/f;Lx9/l;)V

    return-void
.end method

.method public constructor <init>(Llb/f;[Lic/f;Lx9/l;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llb/f;",
            "[",
            "Lic/f;",
            "Lx9/l<",
            "-",
            "Lma/u;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalChecks"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, [Lic/f;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lic/k;-><init>(Llb/f;Lmc/d;Ljava/util/Collection;Lx9/l;[Lic/f;)V

    return-void
.end method
