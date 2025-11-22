.class public final Lga/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/internal/i;


# static fields
.field public static final synthetic e:[Lda/m;
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
.field public final a:Lcc/e0;

.field public final b:Lga/t0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lga/t0$a<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lga/t0$a;

.field public final d:Lga/t0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lda/m;

    new-instance v1, Lkotlin/jvm/internal/r;

    const-class v2, Lga/p0;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v3

    const-string v4, "classifier"

    const-string v5, "getClassifier()Lkotlin/reflect/KClassifier;"

    invoke-direct {v1, v3, v4, v5}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/jvm/internal/r;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v2

    const-string v3, "arguments"

    const-string v4, "getArguments()Ljava/util/List;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lga/p0;->e:[Lda/m;

    return-void
.end method

.method public constructor <init>(Lcc/e0;Lx9/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcc/e0;",
            "Lx9/a<",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lga/p0;->a:Lcc/e0;

    instance-of p1, p2, Lga/t0$a;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lga/t0$a;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    invoke-static {p2}, Lga/t0;->c(Lx9/a;)Lga/t0$a;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p1

    :cond_2
    :goto_1
    iput-object v0, p0, Lga/p0;->b:Lga/t0$a;

    new-instance p1, Lga/p0$b;

    invoke-direct {p1, p0}, Lga/p0$b;-><init>(Lga/p0;)V

    invoke-static {p1}, Lga/t0;->c(Lx9/a;)Lga/t0$a;

    move-result-object p1

    iput-object p1, p0, Lga/p0;->c:Lga/t0$a;

    new-instance p1, Lga/p0$a;

    invoke-direct {p1, p0, p2}, Lga/p0$a;-><init>(Lga/p0;Lx9/a;)V

    invoke-static {p1}, Lga/t0;->c(Lx9/a;)Lga/t0$a;

    move-result-object p1

    iput-object p1, p0, Lga/p0;->d:Lga/t0$a;

    return-void
.end method


# virtual methods
.method public final b()Lda/e;
    .locals 2

    .line 1
    sget-object v0, Lga/p0;->e:[Lda/m;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iget-object v0, p0, Lga/p0;->c:Lga/t0$a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lga/t0$a;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lda/e;

    .line 13
    .line 14
    return-object v0
.end method

.method public final e()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lga/p0;->b:Lga/t0$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lga/t0$a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lga/p0;

    if-eqz v0, :cond_0

    check-cast p1, Lga/p0;

    iget-object v0, p1, Lga/p0;->a:Lcc/e0;

    iget-object v1, p0, Lga/p0;->a:Lcc/e0;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lga/p0;->b()Lda/e;

    move-result-object v0

    invoke-virtual {p1}, Lga/p0;->b()Lda/e;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lga/p0;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lga/p0;->getArguments()Ljava/util/List;

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

.method public final g(Lcc/e0;)Lda/e;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcc/e0;->M0()Lcc/c1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcc/c1;->n()Lma/g;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Lma/e;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_7

    .line 14
    .line 15
    check-cast v0, Lma/e;

    .line 16
    .line 17
    invoke-static {v0}, Lga/z0;->j(Lma/e;)Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    return-object v3

    .line 24
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    invoke-virtual {p1}, Lcc/e0;->K0()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lm9/t;->r1(Ljava/util/List;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcc/i1;

    .line 39
    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    invoke-interface {p1}, Lcc/i1;->getType()Lcc/e0;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0, p1}, Lga/p0;->g(Lcc/e0;)Lda/e;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    new-instance v0, Lga/n;

    .line 56
    .line 57
    invoke-static {p1}, Lb8/f;->K(Lda/e;)Lda/d;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/d0;->q(Lda/d;)Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {v0, p1}, Lga/n;-><init>(Ljava/lang/Class;)V

    .line 74
    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_2
    new-instance p1, Ll9/f;

    .line 78
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v1, "Cannot determine classifier for array element type: "

    .line 82
    .line 83
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const/4 v1, 0x1

    .line 94
    invoke-direct {p1, v0, v1}, Ll9/f;-><init>(Ljava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    throw p1

    .line 98
    :cond_3
    :goto_0
    new-instance p1, Lga/n;

    .line 99
    .line 100
    invoke-direct {p1, v0}, Lga/n;-><init>(Ljava/lang/Class;)V

    .line 101
    .line 102
    .line 103
    return-object p1

    .line 104
    :cond_4
    invoke-static {p1}, Lcc/q1;->g(Lcc/e0;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-nez p1, :cond_6

    .line 109
    .line 110
    new-instance p1, Lga/n;

    .line 111
    .line 112
    sget-object v1, Lsa/d;->b:Ljava/util/Map;

    .line 113
    .line 114
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Ljava/lang/Class;

    .line 119
    .line 120
    if-nez v1, :cond_5

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_5
    move-object v0, v1

    .line 124
    :goto_1
    invoke-direct {p1, v0}, Lga/n;-><init>(Ljava/lang/Class;)V

    .line 125
    .line 126
    .line 127
    return-object p1

    .line 128
    :cond_6
    new-instance p1, Lga/n;

    .line 129
    .line 130
    invoke-direct {p1, v0}, Lga/n;-><init>(Ljava/lang/Class;)V

    .line 131
    .line 132
    .line 133
    return-object p1

    .line 134
    :cond_7
    instance-of p1, v0, Lma/w0;

    .line 135
    .line 136
    if-eqz p1, :cond_8

    .line 137
    .line 138
    new-instance p1, Lga/q0;

    .line 139
    .line 140
    check-cast v0, Lma/w0;

    .line 141
    .line 142
    invoke-direct {p1, v3, v0}, Lga/q0;-><init>(Lga/r0;Lma/w0;)V

    .line 143
    .line 144
    .line 145
    return-object p1

    .line 146
    :cond_8
    instance-of p1, v0, Lma/v0;

    .line 147
    .line 148
    if-nez p1, :cond_9

    .line 149
    .line 150
    return-object v3

    .line 151
    :cond_9
    new-instance p1, Ll9/f;

    .line 152
    .line 153
    const-string v0, "An operation is not implemented: Type alias classifiers are not yet supported"

    .line 154
    .line 155
    invoke-direct {p1, v0, v2}, Ll9/f;-><init>(Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    throw p1
.end method

.method public final getArguments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lda/p;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lga/p0;->e:[Lda/m;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iget-object v0, p0, Lga/p0;->d:Lga/t0$a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lga/t0$a;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "<get-arguments>(...)"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast v0, Ljava/util/List;

    .line 18
    .line 19
    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lga/p0;->a:Lcc/e0;

    invoke-virtual {v0}, Lcc/e0;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lga/p0;->b()Lda/e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lga/p0;->getArguments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lga/v0;->a:Lnb/d;

    iget-object v0, p0, Lga/p0;->a:Lcc/e0;

    invoke-static {v0}, Lga/v0;->d(Lcc/e0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
