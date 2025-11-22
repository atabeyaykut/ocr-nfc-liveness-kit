.class public final Lga/x;
.super Lga/h;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/internal/e;
.implements Lda/g;
.implements Lx9/a;
.implements Lx9/l;
.implements Lx9/b;
.implements Lx9/c;
.implements Lx9/d;
.implements Lx9/e;
.implements Lx9/f;
.implements Lx9/g;
.implements Lx9/h;
.implements Lx9/i;
.implements Lx9/j;
.implements Lx9/k;
.implements Lx9/p;
.implements Lx9/m;
.implements Lx9/n;
.implements Lx9/o;
.implements Lx9/q;
.implements Lx9/r;
.implements Lx9/s;
.implements Lx9/t;
.implements Lx9/u;
.implements Lx9/v;
.implements Lx9/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lga/h<",
        "Ljava/lang/Object;",
        ">;",
        "Lkotlin/jvm/internal/e<",
        "Ljava/lang/Object;",
        ">;",
        "Lda/g<",
        "Ljava/lang/Object;",
        ">;",
        "Lx9/a;",
        "Lx9/l;",
        "Lx9/b;",
        "Lx9/c;",
        "Lx9/d;",
        "Lx9/e;",
        "Lx9/f;",
        "Lx9/g;",
        "Lx9/h;",
        "Lx9/i;",
        "Lx9/j;",
        "Lx9/k;",
        "Lx9/p;",
        "Lx9/m;",
        "Lx9/n;",
        "Lx9/o;",
        "Lx9/q;",
        "Lx9/r;",
        "Lx9/s;",
        "Lx9/t;",
        "Lx9/u;",
        "Lx9/v;",
        "Lx9/w;"
    }
.end annotation


# static fields
.field public static final synthetic l:[Lda/m;
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
.field public final e:Lga/s;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/Object;

.field public final h:Lga/t0$a;

.field public final j:Lga/t0$b;

.field public final k:Lga/t0$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Lda/m;

    new-instance v1, Lkotlin/jvm/internal/r;

    const-class v2, Lga/x;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v3

    const-string v4, "descriptor"

    const-string v5, "getDescriptor()Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;"

    invoke-direct {v1, v3, v4, v5}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/jvm/internal/r;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v3

    const-string v4, "caller"

    const-string v5, "getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;"

    invoke-direct {v1, v3, v4, v5}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/jvm/internal/r;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v2

    const-string v3, "defaultCaller"

    const-string v4, "getDefaultCaller()Lkotlin/reflect/jvm/internal/calls/Caller;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lga/x;->l:[Lda/m;

    return-void
.end method

.method public constructor <init>(Lga/s;Ljava/lang/String;Ljava/lang/String;Lma/u;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lga/h;-><init>()V

    iput-object p1, p0, Lga/x;->e:Lga/s;

    iput-object p3, p0, Lga/x;->f:Ljava/lang/String;

    iput-object p5, p0, Lga/x;->g:Ljava/lang/Object;

    new-instance p1, Lga/x$c;

    invoke-direct {p1, p0, p2}, Lga/x$c;-><init>(Lga/x;Ljava/lang/String;)V

    .line 1
    new-instance p2, Lga/t0$a;

    invoke-direct {p2, p4, p1}, Lga/t0$a;-><init>(Ljava/lang/Object;Lx9/a;)V

    .line 2
    iput-object p2, p0, Lga/x;->h:Lga/t0$a;

    new-instance p1, Lga/x$a;

    invoke-direct {p1, p0}, Lga/x$a;-><init>(Lga/x;)V

    .line 3
    new-instance p2, Lga/t0$b;

    invoke-direct {p2, p1}, Lga/t0$b;-><init>(Lx9/a;)V

    .line 4
    iput-object p2, p0, Lga/x;->j:Lga/t0$b;

    new-instance p1, Lga/x$b;

    invoke-direct {p1, p0}, Lga/x$b;-><init>(Lga/x;)V

    .line 5
    new-instance p2, Lga/t0$b;

    invoke-direct {p2, p1}, Lga/t0$b;-><init>(Lx9/a;)V

    .line 6
    iput-object p2, p0, Lga/x;->k:Lga/t0$b;

    return-void
.end method

.method public constructor <init>(Lga/s;Lma/u;)V
    .locals 7

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lma/j;->getName()Llb/f;

    move-result-object v0

    invoke-virtual {v0}, Llb/f;->o()Ljava/lang/String;

    move-result-object v3

    const-string v0, "descriptor.name.asString()"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lga/x0;->c(Lma/u;)Lga/f;

    move-result-object v0

    invoke-virtual {v0}, Lga/f;->a()Ljava/lang/String;

    move-result-object v4

    .line 7
    sget-object v6, Lkotlin/jvm/internal/a;->NO_RECEIVER:Ljava/lang/Object;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lga/x;-><init>(Lga/s;Ljava/lang/String;Ljava/lang/String;Lma/u;Ljava/lang/Object;)V

    return-void
.end method

.method public static final r(Lga/x;Ljava/lang/reflect/Constructor;Lma/u;Z)Lha/g;
    .locals 1

    .line 1
    if-nez p3, :cond_9

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    instance-of p3, p2, Lma/d;

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    check-cast p2, Lma/d;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p2, 0x0

    .line 14
    :goto_0
    if-nez p2, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    invoke-interface {p2}, Lma/z;->getVisibility()Lma/q;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-static {p3}, Lma/p;->e(Lma/q;)Z

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    if-eqz p3, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    invoke-interface {p2}, Lma/i;->x()Lma/e;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    const-string v0, "constructorDescriptor.constructedClass"

    .line 33
    .line 34
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p3}, Lob/k;->b(Lma/j;)Z

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    if-eqz p3, :cond_3

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    invoke-interface {p2}, Lma/i;->x()Lma/e;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-static {p3}, Lob/i;->q(Lma/h;)Z

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    if-eqz p3, :cond_4

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    invoke-interface {p2}, Lma/a;->g()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    const-string p3, "constructorDescriptor.valueParameters"

    .line 60
    .line 61
    invoke-static {p2, p3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    check-cast p2, Ljava/lang/Iterable;

    .line 65
    .line 66
    instance-of p3, p2, Ljava/util/Collection;

    .line 67
    .line 68
    if-eqz p3, :cond_5

    .line 69
    .line 70
    move-object p3, p2

    .line 71
    check-cast p3, Ljava/util/Collection;

    .line 72
    .line 73
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    if-eqz p3, :cond_5

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result p3

    .line 88
    if-eqz p3, :cond_7

    .line 89
    .line 90
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    check-cast p3, Lma/a1;

    .line 95
    .line 96
    invoke-interface {p3}, Lma/z0;->getType()Lcc/e0;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    const-string v0, "it.type"

    .line 101
    .line 102
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-static {p3}, Lcom/google/android/gms/internal/clearcut/d0;->z(Lcc/e0;)Z

    .line 106
    .line 107
    .line 108
    move-result p3

    .line 109
    if-eqz p3, :cond_6

    .line 110
    .line 111
    const/4 p2, 0x1

    .line 112
    goto :goto_2

    .line 113
    :cond_7
    :goto_1
    const/4 p2, 0x0

    .line 114
    :goto_2
    if-eqz p2, :cond_9

    .line 115
    .line 116
    invoke-virtual {p0}, Lga/x;->q()Z

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    if-eqz p2, :cond_8

    .line 121
    .line 122
    new-instance p2, Lha/g$a;

    .line 123
    .line 124
    invoke-virtual {p0}, Lga/x;->s()Lma/u;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    iget-object p0, p0, Lga/x;->g:Ljava/lang/Object;

    .line 129
    .line 130
    invoke-static {p0, p3}, Lb8/f;->p(Ljava/lang/Object;Lma/b;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-direct {p2, p1, p0}, Lha/g$a;-><init>(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_8
    new-instance p2, Lha/g$b;

    .line 139
    .line 140
    invoke-direct {p2, p1}, Lha/g$b;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_9
    invoke-virtual {p0}, Lga/x;->q()Z

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    if-eqz p2, :cond_a

    .line 149
    .line 150
    new-instance p2, Lha/g$c;

    .line 151
    .line 152
    invoke-virtual {p0}, Lga/x;->s()Lma/u;

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    iget-object p0, p0, Lga/x;->g:Ljava/lang/Object;

    .line 157
    .line 158
    invoke-static {p0, p3}, Lb8/f;->p(Ljava/lang/Object;Lma/b;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-direct {p2, p1, p0}, Lha/g$c;-><init>(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_a
    new-instance p2, Lha/g$d;

    .line 167
    .line 168
    invoke-direct {p2, p1}, Lha/g$d;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 169
    .line 170
    .line 171
    :goto_3
    return-object p2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-static {p1}, Lga/z0;->b(Ljava/lang/Object;)Lga/x;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lga/x;->e:Lga/s;

    iget-object v2, p1, Lga/x;->e:Lga/s;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lga/x;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lga/x;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lga/x;->f:Ljava/lang/String;

    iget-object v2, p1, Lga/x;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lga/x;->g:Ljava/lang/Object;

    iget-object p1, p1, Lga/x;->g:Ljava/lang/Object;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final getArity()I
    .locals 1

    invoke-virtual {p0}, Lga/x;->k()Lha/f;

    move-result-object v0

    invoke-static {v0}, Lb8/f;->H(Lha/f;)I

    move-result v0

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lga/x;->s()Lma/u;

    move-result-object v0

    invoke-interface {v0}, Lma/j;->getName()Llb/f;

    move-result-object v0

    invoke-virtual {v0}, Llb/f;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "descriptor.name.asString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lga/x;->e:Lga/s;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lga/x;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lga/x;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    aput-object p2, v0, p1

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    aput-object p3, v0, p1

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lga/h;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0, v0}, Lga/h;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    invoke-virtual {p0, v0}, Lga/h;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 3
    invoke-virtual {p0, v0}, Lga/h;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    .line 4
    invoke-virtual {p0, v0}, Lga/h;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isExternal()Z
    .locals 1

    invoke-virtual {p0}, Lga/x;->s()Lma/u;

    move-result-object v0

    invoke-interface {v0}, Lma/z;->isExternal()Z

    move-result v0

    return v0
.end method

.method public final isInfix()Z
    .locals 1

    invoke-virtual {p0}, Lga/x;->s()Lma/u;

    move-result-object v0

    invoke-interface {v0}, Lma/u;->isInfix()Z

    move-result v0

    return v0
.end method

.method public final isInline()Z
    .locals 1

    invoke-virtual {p0}, Lga/x;->s()Lma/u;

    move-result-object v0

    invoke-interface {v0}, Lma/u;->isInline()Z

    move-result v0

    return v0
.end method

.method public final isOperator()Z
    .locals 1

    invoke-virtual {p0}, Lga/x;->s()Lma/u;

    move-result-object v0

    invoke-interface {v0}, Lma/u;->isOperator()Z

    move-result v0

    return v0
.end method

.method public final isSuspend()Z
    .locals 1

    invoke-virtual {p0}, Lga/x;->s()Lma/u;

    move-result-object v0

    invoke-interface {v0}, Lma/u;->isSuspend()Z

    move-result v0

    return v0
.end method

.method public final k()Lha/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lha/f<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lga/x;->l:[Lda/m;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iget-object v0, p0, Lga/x;->j:Lga/t0$b;

    .line 7
    .line 8
    invoke-virtual {v0}, Lga/t0$b;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "<get-caller>(...)"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast v0, Lha/f;

    .line 18
    .line 19
    return-object v0
.end method

.method public final m()Lga/s;
    .locals 1

    iget-object v0, p0, Lga/x;->e:Lga/s;

    return-object v0
.end method

.method public final n()Lha/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lha/f<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lga/x;->l:[Lda/m;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iget-object v0, p0, Lga/x;->k:Lga/t0$b;

    .line 7
    .line 8
    invoke-virtual {v0}, Lga/t0$b;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lha/f;

    .line 13
    .line 14
    return-object v0
.end method

.method public final bridge synthetic o()Lma/b;
    .locals 1

    invoke-virtual {p0}, Lga/x;->s()Lma/u;

    move-result-object v0

    return-object v0
.end method

.method public final q()Z
    .locals 2

    iget-object v0, p0, Lga/x;->g:Ljava/lang/Object;

    sget-object v1, Lkotlin/jvm/internal/a;->NO_RECEIVER:Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final s()Lma/u;
    .locals 2

    .line 1
    sget-object v0, Lga/x;->l:[Lda/m;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iget-object v0, p0, Lga/x;->h:Lga/t0$a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lga/t0$a;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "<get-descriptor>(...)"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast v0, Lma/u;

    .line 18
    .line 19
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lga/v0;->a:Lnb/d;

    invoke-virtual {p0}, Lga/x;->s()Lma/u;

    move-result-object v0

    invoke-static {v0}, Lga/v0;->b(Lma/u;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
