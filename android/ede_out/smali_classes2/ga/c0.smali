.class public final Lga/c0;
.super Lga/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lga/c0$a;
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Lga/t0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lga/t0$b<",
            "Lga/c0$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "jClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lga/s;-><init>()V

    iput-object p1, p0, Lga/c0;->b:Ljava/lang/Class;

    new-instance p1, Lga/c0$b;

    invoke-direct {p1, p0}, Lga/c0$b;-><init>(Lga/c0;)V

    invoke-static {p1}, Lga/t0;->b(Lx9/a;)Lga/t0$b;

    move-result-object p1

    iput-object p1, p0, Lga/c0;->c:Lga/t0$b;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lga/c0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lga/c0;

    .line 6
    .line 7
    iget-object p1, p1, Lga/c0;->b:Ljava/lang/Class;

    .line 8
    .line 9
    iget-object v0, p0, Lga/c0;->b:Ljava/lang/Class;

    .line 10
    .line 11
    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public final g()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lga/c0;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lga/c0;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final n()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lma/i;",
            ">;"
        }
    .end annotation

    sget-object v0, Lm9/v;->a:Lm9/v;

    return-object v0
.end method

.method public final o(Llb/f;)Ljava/util/Collection;
    .locals 3
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

    .line 1
    iget-object v0, p0, Lga/c0;->c:Lga/t0$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lga/t0$b;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lga/c0$a;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v1, Lga/c0$a;->g:[Lda/m;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    aget-object v1, v1, v2

    .line 16
    .line 17
    iget-object v0, v0, Lga/c0$a;->d:Lga/t0$a;

    .line 18
    .line 19
    invoke-virtual {v0}, Lga/t0$a;->invoke()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "<get-scope>(...)"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    check-cast v0, Lvb/i;

    .line 29
    .line 30
    sget-object v1, Lua/c;->b:Lua/c;

    .line 31
    .line 32
    invoke-interface {v0, p1, v1}, Lvb/i;->c(Llb/f;Lua/c;)Ljava/util/Collection;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method

.method public final p(I)Lma/l0;
    .locals 8

    .line 1
    iget-object v0, p0, Lga/c0;->c:Lga/t0$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lga/t0$b;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lga/c0$a;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v1, Lga/c0$a;->g:[Lda/m;

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    aget-object v1, v1, v2

    .line 16
    .line 17
    iget-object v0, v0, Lga/c0$a;->f:Lga/t0$b;

    .line 18
    .line 19
    invoke-virtual {v0}, Lga/t0$b;->invoke()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ll9/k;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v1, v0, Ll9/k;->a:Ljava/lang/Object;

    .line 28
    .line 29
    move-object v4, v1

    .line 30
    check-cast v4, Lkb/f;

    .line 31
    .line 32
    iget-object v1, v0, Ll9/k;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Lgb/k;

    .line 35
    .line 36
    iget-object v0, v0, Ll9/k;->c:Ljava/lang/Object;

    .line 37
    .line 38
    move-object v6, v0

    .line 39
    check-cast v6, Lkb/e;

    .line 40
    .line 41
    sget-object v0, Ljb/a;->n:Lmb/h$e;

    .line 42
    .line 43
    const-string v2, "packageLocalVariable"

    .line 44
    .line 45
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v0, p1}, Lib/e;->b(Lmb/h$c;Lmb/h$e;I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    move-object v3, p1

    .line 53
    check-cast v3, Lgb/m;

    .line 54
    .line 55
    if-eqz v3, :cond_0

    .line 56
    .line 57
    iget-object v2, p0, Lga/c0;->b:Ljava/lang/Class;

    .line 58
    .line 59
    new-instance v5, Lib/g;

    .line 60
    .line 61
    iget-object p1, v1, Lgb/k;->g:Lgb/s;

    .line 62
    .line 63
    const-string v0, "packageProto.typeTable"

    .line 64
    .line 65
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {v5, p1}, Lib/g;-><init>(Lgb/s;)V

    .line 69
    .line 70
    .line 71
    sget-object v7, Lga/c0$c;->a:Lga/c0$c;

    .line 72
    .line 73
    invoke-static/range {v2 .. v7}, Lga/z0;->f(Ljava/lang/Class;Lmb/h$c;Lib/c;Lib/g;Lib/a;Lx9/p;)Lma/a;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Lma/l0;

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    const/4 p1, 0x0

    .line 81
    :goto_0
    return-object p1
.end method

.method public final r()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lga/c0;->c:Lga/t0$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lga/t0$b;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lga/c0$a;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v1, Lga/c0$a;->g:[Lda/m;

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    aget-object v1, v1, v2

    .line 16
    .line 17
    iget-object v0, v0, Lga/c0$a;->e:Lga/t0$b;

    .line 18
    .line 19
    invoke-virtual {v0}, Lga/t0$b;->invoke()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Class;

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lga/c0;->b:Ljava/lang/Class;

    .line 28
    .line 29
    :cond_0
    return-object v0
.end method

.method public final s(Llb/f;)Ljava/util/Collection;
    .locals 3
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

    .line 1
    iget-object v0, p0, Lga/c0;->c:Lga/t0$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lga/t0$b;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lga/c0$a;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v1, Lga/c0$a;->g:[Lda/m;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    aget-object v1, v1, v2

    .line 16
    .line 17
    iget-object v0, v0, Lga/c0$a;->d:Lga/t0$a;

    .line 18
    .line 19
    invoke-virtual {v0}, Lga/t0$a;->invoke()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "<get-scope>(...)"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    check-cast v0, Lvb/i;

    .line 29
    .line 30
    sget-object v1, Lua/c;->b:Lua/c;

    .line 31
    .line 32
    invoke-interface {v0, p1, v1}, Lvb/i;->a(Llb/f;Lua/c;)Ljava/util/Collection;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lga/c0;->b:Ljava/lang/Class;

    invoke-static {v1}, Lsa/d;->a(Ljava/lang/Class;)Llb/b;

    move-result-object v1

    invoke-virtual {v1}, Llb/b;->b()Llb/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
