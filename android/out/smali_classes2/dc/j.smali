.class public final Ldc/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpb/b;


# instance fields
.field public final a:Lcc/i1;

.field public b:Lx9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/a<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcc/s1;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Ldc/j;

.field public final d:Lma/w0;

.field public final e:Ll9/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public synthetic constructor <init>(Lcc/i1;Ldc/i;Ldc/j;Lma/w0;I)V
    .locals 2

    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_1

    move-object p3, v1

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v1

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Ldc/j;-><init>(Lcc/i1;Lx9/a;Ldc/j;Lma/w0;)V

    return-void
.end method

.method public constructor <init>(Lcc/i1;Lx9/a;Ldc/j;Lma/w0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcc/i1;",
            "Lx9/a<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcc/s1;",
            ">;>;",
            "Ldc/j;",
            "Lma/w0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldc/j;->a:Lcc/i1;

    iput-object p2, p0, Ldc/j;->b:Lx9/a;

    iput-object p3, p0, Ldc/j;->c:Ldc/j;

    iput-object p4, p0, Ldc/j;->d:Lma/w0;

    new-instance p1, Ldc/j$a;

    invoke-direct {p1, p0}, Ldc/j$a;-><init>(Ldc/j;)V

    const/4 p2, 0x2

    invoke-static {p2, p1}, Lc5/y;->v(ILx9/a;)Ll9/e;

    move-result-object p1

    iput-object p1, p0, Ldc/j;->e:Ll9/e;

    return-void
.end method


# virtual methods
.method public final b()Lcc/i1;
    .locals 1

    iget-object v0, p0, Ldc/j;->a:Lcc/i1;

    return-object v0
.end method

.method public final c(Ldc/f;)Ldc/j;
    .locals 4

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ldc/j;->a:Lcc/i1;

    invoke-interface {v0, p1}, Lcc/i1;->a(Ldc/f;)Lcc/i1;

    move-result-object v0

    const-string v1, "projection.refine(kotlinTypeRefiner)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Ldc/j;->b:Lx9/a;

    if-eqz v1, :cond_0

    new-instance v1, Ldc/j$b;

    invoke-direct {v1, p0, p1}, Ldc/j$b;-><init>(Ldc/j;Ldc/f;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object p1, p0, Ldc/j;->c:Ldc/j;

    if-nez p1, :cond_1

    move-object p1, p0

    :cond_1
    new-instance v2, Ldc/j;

    iget-object v3, p0, Ldc/j;->d:Lma/w0;

    invoke-direct {v2, v0, v1, p1, v3}, Ldc/j;-><init>(Lcc/i1;Lx9/a;Ldc/j;Lma/w0;)V

    return-object v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const-class v1, Ldc/j;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.types.checker.NewCapturedTypeConstructor"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ldc/j;

    iget-object v1, p0, Ldc/j;->c:Ldc/j;

    if-nez v1, :cond_3

    move-object v1, p0

    :cond_3
    iget-object v3, p1, Ldc/j;->c:Ldc/j;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    move-object p1, v3

    :goto_1
    if-ne v1, p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public final getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lma/w0;",
            ">;"
        }
    .end annotation

    sget-object v0, Lm9/v;->a:Lm9/v;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Ldc/j;->c:Ldc/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldc/j;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final l()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/j;->e:Ll9/e;

    .line 2
    .line 3
    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lm9/v;->a:Lm9/v;

    .line 12
    .line 13
    :cond_0
    check-cast v0, Ljava/util/Collection;

    .line 14
    .line 15
    return-object v0
.end method

.method public final m()Lja/k;
    .locals 2

    iget-object v0, p0, Ldc/j;->a:Lcc/i1;

    invoke-interface {v0}, Lcc/i1;->getType()Lcc/e0;

    move-result-object v0

    const-string v1, "projection.type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc5/y;->o(Lcc/e0;)Lja/k;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lma/g;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CapturedType("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ldc/j;->a:Lcc/i1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
