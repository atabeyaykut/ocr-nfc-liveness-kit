.class public final Lka/b;
.super Lpa/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lka/b$a;
    }
.end annotation


# static fields
.field public static final m:Llb/b;

.field public static final n:Llb/b;


# instance fields
.field public final e:Lbc/l;

.field public final f:Lma/e0;

.field public final g:Lka/c;

.field public final h:I

.field public final j:Lka/b$a;

.field public final k:Lka/d;

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lma/w0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Llb/b;

    sget-object v1, Lja/o;->k:Llb/c;

    const-string v2, "Function"

    invoke-static {v2}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Llb/b;-><init>(Llb/c;Llb/f;)V

    sput-object v0, Lka/b;->m:Llb/b;

    new-instance v0, Llb/b;

    sget-object v1, Lja/o;->h:Llb/c;

    const-string v2, "KFunction"

    invoke-static {v2}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Llb/b;-><init>(Llb/c;Llb/f;)V

    sput-object v0, Lka/b;->n:Llb/b;

    return-void
.end method

.method public constructor <init>(Lbc/l;Lja/b;Lka/c;I)V
    .locals 3

    .line 1
    const-string v0, "storageManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "containingDeclaration"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "functionKind"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3, p4}, Lka/c;->n(I)Llb/f;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p0, p1, v0}, Lpa/b;-><init>(Lbc/l;Llb/f;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lka/b;->e:Lbc/l;

    .line 24
    .line 25
    iput-object p2, p0, Lka/b;->f:Lma/e0;

    .line 26
    .line 27
    iput-object p3, p0, Lka/b;->g:Lka/c;

    .line 28
    .line 29
    iput p4, p0, Lka/b;->h:I

    .line 30
    .line 31
    new-instance p2, Lka/b$a;

    .line 32
    .line 33
    invoke-direct {p2, p0}, Lka/b$a;-><init>(Lka/b;)V

    .line 34
    .line 35
    .line 36
    iput-object p2, p0, Lka/b;->j:Lka/b$a;

    .line 37
    .line 38
    new-instance p2, Lka/d;

    .line 39
    .line 40
    invoke-direct {p2, p1, p0}, Lka/d;-><init>(Lbc/l;Lka/b;)V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lka/b;->k:Lka/d;

    .line 44
    .line 45
    new-instance p1, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    new-instance p2, Lca/d;

    .line 51
    .line 52
    const/4 p3, 0x1

    .line 53
    invoke-direct {p2, p3, p4}, Lca/d;-><init>(II)V

    .line 54
    .line 55
    .line 56
    new-instance p3, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-static {p2}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 59
    .line 60
    .line 61
    move-result p4

    .line 62
    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Lca/b;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    :goto_0
    move-object p4, p2

    .line 70
    check-cast p4, Lca/c;

    .line 71
    .line 72
    iget-boolean p4, p4, Lca/c;->c:Z

    .line 73
    .line 74
    if-eqz p4, :cond_0

    .line 75
    .line 76
    move-object p4, p2

    .line 77
    check-cast p4, Lm9/b0;

    .line 78
    .line 79
    invoke-virtual {p4}, Lm9/b0;->nextInt()I

    .line 80
    .line 81
    .line 82
    move-result p4

    .line 83
    sget-object v0, Lcc/t1;->d:Lcc/t1;

    .line 84
    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v2, "P"

    .line 88
    .line 89
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p4

    .line 99
    invoke-static {p4}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 100
    .line 101
    .line 102
    move-result-object p4

    .line 103
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    iget-object v2, p0, Lka/b;->e:Lbc/l;

    .line 108
    .line 109
    invoke-static {p0, v0, p4, v1, v2}, Lpa/t0;->O0(Lma/j;Lcc/t1;Llb/f;ILbc/l;)Lpa/t0;

    .line 110
    .line 111
    .line 112
    move-result-object p4

    .line 113
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    sget-object p4, Ll9/m;->a:Ll9/m;

    .line 117
    .line 118
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_0
    sget-object p2, Lcc/t1;->e:Lcc/t1;

    .line 123
    .line 124
    const-string p3, "R"

    .line 125
    .line 126
    invoke-static {p3}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 131
    .line 132
    .line 133
    move-result p4

    .line 134
    iget-object v0, p0, Lka/b;->e:Lbc/l;

    .line 135
    .line 136
    invoke-static {p0, p2, p3, p4, v0}, Lpa/t0;->O0(Lma/j;Lcc/t1;Llb/f;ILbc/l;)Lpa/t0;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    invoke-static {p1}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    iput-object p1, p0, Lka/b;->l:Ljava/util/List;

    .line 148
    .line 149
    return-void
.end method


# virtual methods
.method public final D0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic E()Ljava/util/Collection;
    .locals 1

    sget-object v0, Lm9/v;->a:Lm9/v;

    return-object v0
.end method

.method public final F()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final G()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final H()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final H0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic M()Lma/d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final N()Lvb/i;
    .locals 1

    sget-object v0, Lvb/i$b;->b:Lvb/i$b;

    return-object v0
.end method

.method public final bridge synthetic P()Lma/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Lma/j;
    .locals 1

    iget-object v0, p0, Lka/b;->f:Lma/e0;

    return-object v0
.end method

.method public final e0(Ldc/f;)Lvb/i;
    .locals 1

    .line 1
    const-string v0, "kotlinTypeRefiner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lka/b;->k:Lka/d;

    .line 7
    .line 8
    return-object p1
.end method

.method public final getAnnotations()Lna/h;
    .locals 1

    sget-object v0, Lna/h$a;->a:Lna/h$a$a;

    return-object v0
.end method

.method public final getSource()Lma/r0;
    .locals 1

    sget-object v0, Lma/r0;->a:Lma/r0$a;

    return-object v0
.end method

.method public final getVisibility()Lma/q;
    .locals 2

    sget-object v0, Lma/p;->e:Lma/p$h;

    const-string v1, "PUBLIC"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final h()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final i()Lcc/c1;
    .locals 1

    iget-object v0, p0, Lka/b;->j:Lka/b$a;

    return-object v0
.end method

.method public final isExternal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isInline()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()Lma/a0;
    .locals 1

    sget-object v0, Lma/a0;->d:Lma/a0;

    return-object v0
.end method

.method public final bridge synthetic k()Ljava/util/Collection;
    .locals 1

    sget-object v0, Lm9/v;->a:Lm9/v;

    return-object v0
.end method

.method public final s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lma/w0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lka/b;->l:Ljava/util/List;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lpa/b;->getName()Llb/f;

    move-result-object v0

    invoke-virtual {v0}, Llb/f;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name.asString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final u()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final y()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final y0()Lma/y0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lma/y0<",
            "Lcc/m0;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
