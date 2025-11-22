.class public abstract Lac/i;
.super Lvb/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lac/i$a;,
        Lac/i$b;
    }
.end annotation


# static fields
.field public static final synthetic f:[Lda/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lda/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lyb/n;

.field public final c:Lac/i$a;

.field public final d:Lbc/i;

.field public final e:Lbc/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lda/m;

    new-instance v1, Lkotlin/jvm/internal/r;

    const-class v2, Lac/i;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v3

    const-string v4, "classNames"

    const-string v5, "getClassNames$deserialization()Ljava/util/Set;"

    invoke-direct {v1, v3, v4, v5}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/jvm/internal/r;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v2

    const-string v3, "classifierNamesLazy"

    const-string v4, "getClassifierNamesLazy()Ljava/util/Set;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lac/i;->f:[Lda/m;

    return-void
.end method

.method public constructor <init>(Lyb/n;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lx9/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb/n;",
            "Ljava/util/List<",
            "Lgb/h;",
            ">;",
            "Ljava/util/List<",
            "Lgb/m;",
            ">;",
            "Ljava/util/List<",
            "Lgb/q;",
            ">;",
            "Lx9/a<",
            "+",
            "Ljava/util/Collection<",
            "Llb/f;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "c"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "classNames"

    .line 7
    .line 8
    invoke-static {p5, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lvb/j;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lac/i;->b:Lyb/n;

    .line 15
    .line 16
    iget-object p1, p1, Lyb/n;->a:Lyb/l;

    .line 17
    .line 18
    iget-object v0, p1, Lyb/l;->c:Lyb/m;

    .line 19
    .line 20
    invoke-interface {v0}, Lyb/m;->a()V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lac/i$b;

    .line 24
    .line 25
    invoke-direct {v0, p0, p2, p3, p4}, Lac/i$b;-><init>(Lac/i;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lac/i;->c:Lac/i$a;

    .line 29
    .line 30
    new-instance p2, Lac/i$c;

    .line 31
    .line 32
    invoke-direct {p2, p5}, Lac/i$c;-><init>(Lx9/a;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p1, Lyb/l;->a:Lbc/l;

    .line 36
    .line 37
    invoke-interface {p1, p2}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iput-object p2, p0, Lac/i;->d:Lbc/i;

    .line 42
    .line 43
    new-instance p2, Lac/i$d;

    .line 44
    .line 45
    invoke-direct {p2, p0}, Lac/i$d;-><init>(Lac/i;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, p2}, Lbc/l;->f(Lx9/a;)Lbc/c$f;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lac/i;->e:Lbc/j;

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public a(Llb/f;Lua/c;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lac/i;->c:Lac/i$a;

    invoke-interface {v0, p1, p2}, Lac/i$a;->a(Llb/f;Lua/c;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Llb/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lac/i;->c:Lac/i$a;

    invoke-interface {v0}, Lac/i$a;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public c(Llb/f;Lua/c;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lac/i;->c:Lac/i$a;

    invoke-interface {v0, p1, p2}, Lac/i$a;->c(Llb/f;Lua/c;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Llb/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lac/i;->c:Lac/i$a;

    invoke-interface {v0}, Lac/i$a;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public e(Llb/f;Lua/c;)Lma/g;
    .locals 1

    .line 1
    const-string p2, "name"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lac/i;->q(Llb/f;)Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iget-object p2, p0, Lac/i;->b:Lyb/n;

    .line 13
    .line 14
    iget-object p2, p2, Lyb/n;->a:Lyb/l;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lac/i;->l(Llb/f;)Llb/b;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p2, p1}, Lyb/l;->b(Llb/b;)Lma/e;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p2, p0, Lac/i;->c:Lac/i$a;

    .line 26
    .line 27
    invoke-interface {p2}, Lac/i$a;->g()Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-interface {p2, p1}, Lac/i$a;->f(Llb/f;)Lma/v0;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 p1, 0x0

    .line 43
    :goto_0
    return-object p1
.end method

.method public final g()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Llb/f;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lac/i;->f:[Lda/m;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    const-string v1, "<this>"

    .line 7
    .line 8
    iget-object v2, p0, Lac/i;->e:Lbc/j;

    .line 9
    .line 10
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "p"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v2}, Lx9/a;->invoke()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/util/Set;

    .line 23
    .line 24
    return-object v0
.end method

.method public abstract h(Ljava/util/ArrayList;Lx9/l;)V
.end method

.method public final i(Lvb/d;Lx9/l;)Ljava/util/Collection;
    .locals 5

    .line 1
    const-string v0, "kindFilter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nameFilter"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    sget v1, Lvb/d;->f:I

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lvb/d;->a(I)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, v0, p2}, Lac/i;->h(Ljava/util/ArrayList;Lx9/l;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v1, p0, Lac/i;->c:Lac/i$a;

    .line 29
    .line 30
    invoke-interface {v1, v0, p1, p2}, Lac/i$a;->e(Ljava/util/ArrayList;Lvb/d;Lx9/l;)V

    .line 31
    .line 32
    .line 33
    sget v2, Lvb/d;->l:I

    .line 34
    .line 35
    invoke-virtual {p1, v2}, Lvb/d;->a(I)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Lac/i;->m()Ljava/util/Set;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Llb/f;

    .line 60
    .line 61
    invoke-interface {p2, v3}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Ljava/lang/Boolean;

    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_1

    .line 72
    .line 73
    iget-object v4, p0, Lac/i;->b:Lyb/n;

    .line 74
    .line 75
    iget-object v4, v4, Lyb/n;->a:Lyb/l;

    .line 76
    .line 77
    invoke-virtual {p0, v3}, Lac/i;->l(Llb/f;)Llb/b;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v4, v3}, Lyb/l;->b(Llb/b;)Lma/e;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/clearcut/d0;->f(Ljava/lang/Object;Ljava/util/AbstractCollection;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    sget v2, Lvb/d;->g:I

    .line 90
    .line 91
    invoke-virtual {p1, v2}, Lvb/d;->a(I)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_4

    .line 96
    .line 97
    invoke-interface {v1}, Lac/i$a;->g()Ljava/util/Set;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_4

    .line 110
    .line 111
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Llb/f;

    .line 116
    .line 117
    invoke-interface {p2, v2}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    check-cast v3, Ljava/lang/Boolean;

    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_3

    .line 128
    .line 129
    invoke-interface {v1, v2}, Lac/i$a;->f(Llb/f;)Lma/v0;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/clearcut/d0;->f(Ljava/lang/Object;Ljava/util/AbstractCollection;)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_4
    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/d0;->i(Ljava/util/ArrayList;)Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Ljava/util/Collection;

    .line 142
    .line 143
    return-object p1
.end method

.method public j(Llb/f;Ljava/util/ArrayList;)V
    .locals 0

    const-string p2, "name"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public k(Llb/f;Ljava/util/ArrayList;)V
    .locals 0

    const-string p2, "name"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract l(Llb/f;)Llb/b;
.end method

.method public final m()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Llb/f;",
            ">;"
        }
    .end annotation

    sget-object v0, Lac/i;->f:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lac/i;->d:Lbc/i;

    invoke-static {v1, v0}, Lb8/f;->O(Lbc/i;Lda/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public abstract n()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Llb/f;",
            ">;"
        }
    .end annotation
.end method

.method public abstract o()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Llb/f;",
            ">;"
        }
    .end annotation
.end method

.method public abstract p()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Llb/f;",
            ">;"
        }
    .end annotation
.end method

.method public q(Llb/f;)Z
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lac/i;->m()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public r(Lac/l;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
