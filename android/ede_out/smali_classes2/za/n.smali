.class public final Lza/n;
.super Lza/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lza/n$b;,
        Lza/n$a;
    }
.end annotation


# instance fields
.field public final n:Lcb/t;

.field public final o:Lza/m;

.field public final p:Lbc/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/j<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final q:Lbc/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/h<",
            "Lza/n$a;",
            "Lma/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp4/g7;Lcb/t;Lza/m;)V
    .locals 1

    const-string v0, "jPackage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownerDescriptor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lza/y;-><init>(Lp4/g7;)V

    iput-object p2, p0, Lza/n;->n:Lcb/t;

    iput-object p3, p0, Lza/n;->o:Lza/m;

    invoke-virtual {p1}, Lp4/g7;->b()Lbc/l;

    move-result-object p2

    new-instance p3, Lza/n$d;

    invoke-direct {p3, p1, p0}, Lza/n$d;-><init>(Lp4/g7;Lza/n;)V

    invoke-interface {p2, p3}, Lbc/l;->f(Lx9/a;)Lbc/c$f;

    move-result-object p2

    iput-object p2, p0, Lza/n;->p:Lbc/j;

    invoke-virtual {p1}, Lp4/g7;->b()Lbc/l;

    move-result-object p2

    new-instance p3, Lza/n$c;

    invoke-direct {p3, p1, p0}, Lza/n$c;-><init>(Lp4/g7;Lza/n;)V

    invoke-interface {p2, p3}, Lbc/l;->e(Lx9/l;)Lbc/c$j;

    move-result-object p1

    iput-object p1, p0, Lza/n;->q:Lbc/h;

    return-void
.end method


# virtual methods
.method public final a(Llb/f;Lua/c;)Ljava/util/Collection;
    .locals 0

    const-string p2, "name"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lm9/v;->a:Lm9/v;

    return-object p1
.end method

.method public final e(Llb/f;Lua/c;)Lma/g;
    .locals 0

    .line 1
    const-string p2, "name"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-virtual {p0, p1, p2}, Lza/n;->v(Llb/f;Lcb/g;)Lma/e;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final f(Lvb/d;Lx9/l;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvb/d;",
            "Lx9/l<",
            "-",
            "Llb/f;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Lma/j;",
            ">;"
        }
    .end annotation

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
    sget-object v0, Lvb/d;->c:Lvb/d$a;

    .line 12
    .line 13
    sget v0, Lvb/d;->l:I

    .line 14
    .line 15
    sget v1, Lvb/d;->e:I

    .line 16
    .line 17
    or-int/2addr v0, v1

    .line 18
    invoke-virtual {p1, v0}, Lvb/d;->a(I)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    sget-object p1, Lm9/v;->a:Lm9/v;

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_0
    iget-object p1, p0, Lza/o;->d:Lbc/i;

    .line 28
    .line 29
    invoke-interface {p1}, Lx9/a;->invoke()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Ljava/lang/Iterable;

    .line 34
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    move-object v2, v1

    .line 55
    check-cast v2, Lma/j;

    .line 56
    .line 57
    instance-of v3, v2, Lma/e;

    .line 58
    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    check-cast v2, Lma/e;

    .line 62
    .line 63
    invoke-interface {v2}, Lma/j;->getName()Llb/f;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const-string v3, "it.name"

    .line 68
    .line 69
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p2, v2}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_2

    .line 83
    .line 84
    const/4 v2, 0x1

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    const/4 v2, 0x0

    .line 87
    :goto_1
    if-eqz v2, :cond_1

    .line 88
    .line 89
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    move-object p1, v0

    .line 94
    :goto_2
    return-object p1
.end method

.method public final h(Lvb/d;Lvb/i$a$a;)Ljava/util/Set;
    .locals 1

    .line 1
    const-string v0, "kindFilter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Lvb/d;->e:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lvb/d;->a(I)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    sget-object p1, Lm9/x;->a:Lm9/x;

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    iget-object p1, p0, Lza/n;->p:Lbc/j;

    .line 18
    .line 19
    invoke-interface {p1}, Lx9/a;->invoke()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/util/Set;

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    new-instance p2, Ljava/util/HashSet;

    .line 28
    .line 29
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return-object p2

    .line 57
    :cond_2
    if-nez p2, :cond_3

    .line 58
    .line 59
    sget-object p2, Lkc/b;->a:Lkc/b$b;

    .line 60
    .line 61
    :cond_3
    iget-object p1, p0, Lza/n;->n:Lcb/t;

    .line 62
    .line 63
    invoke-interface {p1, p2}, Lcb/t;->F(Lx9/l;)V

    .line 64
    .line 65
    .line 66
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 69
    .line 70
    .line 71
    sget-object p2, Lm9/u;->a:Lm9/u;

    .line 72
    .line 73
    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lcb/g;

    .line 84
    .line 85
    invoke-interface {v0}, Lcb/g;->G()V

    .line 86
    .line 87
    .line 88
    invoke-interface {v0}, Lcb/s;->getName()Llb/f;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_5
    return-object p1
.end method

.method public final i(Lvb/d;Lvb/i$a$a;)Ljava/util/Set;
    .locals 0

    const-string p2, "kindFilter"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lm9/x;->a:Lm9/x;

    return-object p1
.end method

.method public final k()Lza/b;
    .locals 1

    sget-object v0, Lza/b$a;->a:Lza/b$a;

    return-object v0
.end method

.method public final m(Ljava/util/LinkedHashSet;Llb/f;)V
    .locals 0

    const-string p1, "name"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final o(Lvb/d;)Ljava/util/Set;
    .locals 1

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lm9/x;->a:Lm9/x;

    return-object p1
.end method

.method public final q()Lma/j;
    .locals 1

    iget-object v0, p0, Lza/n;->o:Lza/m;

    return-object v0
.end method

.method public final v(Llb/f;Lcb/g;)Lma/e;
    .locals 3

    .line 1
    sget-object v0, Llb/h;->a:Llb/f;

    .line 2
    .line 3
    const-string v0, "name"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Llb/f;->o()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "name.asString()"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-lez v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-boolean v0, p1, Llb/f;->b:Z

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_2
    iget-object v1, p0, Lza/n;->p:Lbc/j;

    .line 40
    .line 41
    invoke-interface {v1}, Lx9/a;->invoke()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/util/Set;

    .line 46
    .line 47
    if-nez p2, :cond_3

    .line 48
    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    invoke-virtual {p1}, Llb/f;->o()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_3

    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_3
    new-instance v0, Lza/n$a;

    .line 63
    .line 64
    invoke-direct {v0, p1, p2}, Lza/n$a;-><init>(Llb/f;Lcb/g;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lza/n;->q:Lbc/h;

    .line 68
    .line 69
    invoke-interface {p1, v0}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lma/e;

    .line 74
    .line 75
    return-object p1
.end method
