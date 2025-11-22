.class public final Lga/p0$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lga/p0;-><init>(Lcc/e0;Lx9/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ljava/util/List<",
        "+",
        "Lda/p;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lga/p0;

.field public final synthetic b:Lx9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/a<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lga/p0;Lx9/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lga/p0;",
            "Lx9/a<",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lga/p0$a;->a:Lga/p0;

    iput-object p2, p0, Lga/p0$a;->b:Lx9/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Lga/p0$a;->a:Lga/p0;

    .line 2
    .line 3
    iget-object v1, v0, Lga/p0;->a:Lcc/e0;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcc/e0;->K0()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    sget-object v0, Lm9/v;->a:Lm9/v;

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    new-instance v2, Lga/o0;

    .line 20
    .line 21
    invoke-direct {v2, v0}, Lga/o0;-><init>(Lga/p0;)V

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    invoke-static {v3, v2}, Lc5/y;->v(ILx9/a;)Ll9/e;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v1, Ljava/lang/Iterable;

    .line 30
    .line 31
    new-instance v4, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-static {v1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/4 v5, 0x0

    .line 45
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-eqz v6, :cond_7

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    add-int/lit8 v7, v5, 0x1

    .line 56
    .line 57
    const/4 v8, 0x0

    .line 58
    if-ltz v5, :cond_6

    .line 59
    .line 60
    check-cast v6, Lcc/i1;

    .line 61
    .line 62
    invoke-interface {v6}, Lcc/i1;->c()Z

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    if-eqz v9, :cond_1

    .line 67
    .line 68
    sget-object v5, Lda/p;->c:Lda/p;

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_1
    new-instance v9, Lga/p0;

    .line 72
    .line 73
    invoke-interface {v6}, Lcc/i1;->getType()Lcc/e0;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    const-string v11, "typeProjection.type"

    .line 78
    .line 79
    invoke-static {v10, v11}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v11, p0, Lga/p0$a;->b:Lx9/a;

    .line 83
    .line 84
    if-nez v11, :cond_2

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    new-instance v8, Lga/n0;

    .line 88
    .line 89
    invoke-direct {v8, v0, v5, v2}, Lga/n0;-><init>(Lga/p0;ILl9/e;)V

    .line 90
    .line 91
    .line 92
    :goto_1
    invoke-direct {v9, v10, v8}, Lga/p0;-><init>(Lcc/e0;Lx9/a;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v6}, Lcc/i1;->b()Lcc/t1;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    const/4 v6, 0x1

    .line 104
    if-eqz v5, :cond_5

    .line 105
    .line 106
    if-eq v5, v6, :cond_4

    .line 107
    .line 108
    if-ne v5, v3, :cond_3

    .line 109
    .line 110
    new-instance v5, Lda/p;

    .line 111
    .line 112
    const/4 v6, 0x3

    .line 113
    invoke-direct {v5, v6, v9}, Lda/p;-><init>(ILga/p0;)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    new-instance v0, Lj7/p;

    .line 118
    .line 119
    invoke-direct {v0}, Lj7/p;-><init>()V

    .line 120
    .line 121
    .line 122
    throw v0

    .line 123
    :cond_4
    new-instance v5, Lda/p;

    .line 124
    .line 125
    invoke-direct {v5, v3, v9}, Lda/p;-><init>(ILga/p0;)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_5
    new-instance v5, Lda/p;

    .line 130
    .line 131
    invoke-direct {v5, v6, v9}, Lda/p;-><init>(ILga/p0;)V

    .line 132
    .line 133
    .line 134
    :goto_2
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move v5, v7

    .line 138
    goto :goto_0

    .line 139
    :cond_6
    invoke-static {}, Lb8/f;->k0()V

    .line 140
    .line 141
    .line 142
    throw v8

    .line 143
    :cond_7
    move-object v0, v4

    .line 144
    :goto_3
    return-object v0
.end method
