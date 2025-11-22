.class public final Lga/n;
.super Lga/s;
.source "SourceFile"

# interfaces
.implements Lda/d;
.implements Lga/q;
.implements Lga/r0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lga/n$a;,
        Lga/n$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lga/s;",
        "Lda/d<",
        "TT;>;",
        "Lga/q;",
        "Lga/r0;"
    }
.end annotation


# static fields
.field public static final synthetic d:I


# instance fields
.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lga/t0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lga/t0$b<",
            "Lga/n<",
            "TT;>.a;>;"
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
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "jClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lga/s;-><init>()V

    iput-object p1, p0, Lga/n;->b:Ljava/lang/Class;

    new-instance p1, Lga/n$c;

    invoke-direct {p1, p0}, Lga/n$c;-><init>(Lga/n;)V

    invoke-static {p1}, Lga/t0;->b(Lx9/a;)Lga/t0$b;

    move-result-object p1

    iput-object p1, p0, Lga/n;->c:Lga/t0$b;

    return-void
.end method


# virtual methods
.method public final A()Lvb/i;
    .locals 2

    invoke-virtual {p0}, Lga/n;->y()Lma/e;

    move-result-object v0

    invoke-interface {v0}, Lma/e;->N()Lvb/i;

    move-result-object v0

    const-string v1, "descriptor.staticScope"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lga/n;->c:Lga/t0$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lga/t0$b;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lga/n$a;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v1, Lga/n$a;->l:[Lda/m;

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    aget-object v1, v1, v2

    .line 16
    .line 17
    iget-object v0, v0, Lga/n$a;->e:Lga/t0$a;

    .line 18
    .line 19
    invoke-virtual {v0}, Lga/t0$a;->invoke()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lga/n;->c:Lga/t0$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lga/t0$b;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lga/n$a;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v1, Lga/n$a;->l:[Lda/m;

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    aget-object v1, v1, v2

    .line 16
    .line 17
    iget-object v0, v0, Lga/n$a;->d:Lga/t0$a;

    .line 18
    .line 19
    invoke-virtual {v0}, Lga/t0$a;->invoke()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lga/n;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/d0;->r(Lda/d;)Ljava/lang/Class;

    move-result-object v0

    check-cast p1, Lda/d;

    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/d0;->r(Lda/d;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final g()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lga/n;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/d0;->r(Lda/d;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic i()Lma/g;
    .locals 1

    invoke-virtual {p0}, Lga/n;->y()Lma/e;

    move-result-object v0

    return-object v0
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

    invoke-virtual {p0}, Lga/n;->y()Lma/e;

    move-result-object v0

    invoke-interface {v0}, Lma/e;->h()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Lma/e;->h()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lma/e;->k()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "descriptor.constructors"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
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

    invoke-virtual {p0}, Lga/n;->z()Lvb/i;

    move-result-object v0

    sget-object v1, Lua/c;->b:Lua/c;

    invoke-interface {v0, p1, v1}, Lvb/i;->c(Llb/f;Lua/c;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0}, Lga/n;->A()Lvb/i;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lvb/i;->c(Llb/f;Lua/c;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1, v0}, Lm9/t;->m1(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final p(I)Lma/l0;
    .locals 9

    .line 1
    iget-object v0, p0, Lga/n;->b:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "DefaultImpls"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<*>"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    check-cast v0, Lga/n;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lga/n;->p(I)Lma/l0;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :cond_0
    invoke-virtual {p0}, Lga/n;->y()Lma/e;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    instance-of v1, v0, Lac/d;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    check-cast v0, Lac/d;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move-object v0, v2

    .line 56
    :goto_0
    if-eqz v0, :cond_2

    .line 57
    .line 58
    sget-object v1, Ljb/a;->j:Lmb/h$e;

    .line 59
    .line 60
    const-string v3, "classLocalVariable"

    .line 61
    .line 62
    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v3, v0, Lac/d;->e:Lgb/b;

    .line 66
    .line 67
    invoke-static {v3, v1, p1}, Lib/e;->b(Lmb/h$c;Lmb/h$e;I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    move-object v4, p1

    .line 72
    check-cast v4, Lgb/m;

    .line 73
    .line 74
    if-eqz v4, :cond_2

    .line 75
    .line 76
    iget-object v3, p0, Lga/n;->b:Ljava/lang/Class;

    .line 77
    .line 78
    iget-object p1, v0, Lac/d;->m:Lyb/n;

    .line 79
    .line 80
    iget-object v5, p1, Lyb/n;->b:Lib/c;

    .line 81
    .line 82
    iget-object v6, p1, Lyb/n;->d:Lib/g;

    .line 83
    .line 84
    iget-object v7, v0, Lac/d;->f:Lib/a;

    .line 85
    .line 86
    sget-object v8, Lga/n$d;->a:Lga/n$d;

    .line 87
    .line 88
    invoke-static/range {v3 .. v8}, Lga/z0;->f(Ljava/lang/Class;Lmb/h$c;Lib/c;Lib/g;Lib/a;Lx9/p;)Lma/a;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    move-object v2, p1

    .line 93
    check-cast v2, Lma/l0;

    .line 94
    .line 95
    :cond_2
    return-object v2
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

    invoke-virtual {p0}, Lga/n;->z()Lvb/i;

    move-result-object v0

    sget-object v1, Lua/c;->b:Lua/c;

    invoke-interface {v0, p1, v1}, Lvb/i;->a(Llb/f;Lua/c;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0}, Lga/n;->A()Lvb/i;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lvb/i;->a(Llb/f;Lua/c;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1, v0}, Lm9/t;->m1(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lga/n;->x()Llb/b;

    move-result-object v1

    invoke-virtual {v1}, Llb/b;->h()Llb/c;

    move-result-object v2

    const-string v3, "classId.packageFqName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Llb/c;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Llb/c;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1}, Llb/b;->i()Llb/c;

    move-result-object v1

    invoke-virtual {v1}, Llb/c;->b()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2e

    const/16 v4, 0x24

    invoke-static {v1, v3, v4}, Lmc/j;->B(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x()Llb/b;
    .locals 3

    .line 1
    sget-object v0, Lga/x0;->a:Llb/b;

    .line 2
    .line 3
    iget-object v0, p0, Lga/n;->b:Ljava/lang/Class;

    .line 4
    .line 5
    const-string v1, "klass"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "klass.componentType"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Ltb/c;->o(Ljava/lang/String;)Ltb/c;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ltb/c;->r()Lja/l;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    :cond_0
    if-eqz v2, :cond_1

    .line 45
    .line 46
    new-instance v0, Llb/b;

    .line 47
    .line 48
    sget-object v1, Lja/o;->k:Llb/c;

    .line 49
    .line 50
    iget-object v2, v2, Lja/l;->b:Llb/f;

    .line 51
    .line 52
    invoke-direct {v0, v1, v2}, Llb/b;-><init>(Llb/c;Llb/f;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    sget-object v0, Lja/o$a;->g:Llb/d;

    .line 57
    .line 58
    invoke-virtual {v0}, Llb/d;->h()Llb/c;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0}, Llb/b;->l(Llb/c;)Llb/b;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 68
    .line 69
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    sget-object v0, Lga/x0;->a:Llb/b;

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v1}, Ltb/c;->o(Ljava/lang/String;)Ltb/c;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ltb/c;->r()Lja/l;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    :cond_4
    if-eqz v2, :cond_5

    .line 97
    .line 98
    new-instance v0, Llb/b;

    .line 99
    .line 100
    sget-object v1, Lja/o;->k:Llb/c;

    .line 101
    .line 102
    iget-object v2, v2, Lja/l;->a:Llb/f;

    .line 103
    .line 104
    invoke-direct {v0, v1, v2}, Llb/b;-><init>(Llb/c;Llb/f;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_5
    invoke-static {v0}, Lsa/d;->a(Ljava/lang/Class;)Llb/b;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iget-boolean v1, v0, Llb/b;->c:Z

    .line 113
    .line 114
    if-nez v1, :cond_6

    .line 115
    .line 116
    sget-object v1, Lla/c;->a:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v0}, Llb/b;->b()Llb/c;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    const-string v2, "classId.asSingleFqName()"

    .line 123
    .line 124
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v1}, Lla/c;->f(Llb/c;)Llb/b;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    if-eqz v1, :cond_6

    .line 132
    .line 133
    move-object v0, v1

    .line 134
    :cond_6
    :goto_0
    return-object v0
.end method

.method public final y()Lma/e;
    .locals 1

    iget-object v0, p0, Lga/n;->c:Lga/t0$b;

    invoke-virtual {v0}, Lga/t0$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lga/n$a;

    invoke-virtual {v0}, Lga/n$a;->a()Lma/e;

    move-result-object v0

    return-object v0
.end method

.method public final z()Lvb/i;
    .locals 1

    invoke-virtual {p0}, Lga/n;->y()Lma/e;

    move-result-object v0

    invoke-interface {v0}, Lma/e;->q()Lcc/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcc/e0;->o()Lvb/i;

    move-result-object v0

    return-object v0
.end method
