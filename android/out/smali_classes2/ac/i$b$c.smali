.class public final Lac/i$b$c;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lac/i$b;-><init>(Lac/i;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Llb/f;",
        "Ljava/util/Collection<",
        "+",
        "Lma/q0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lac/i$b;


# direct methods
.method public constructor <init>(Lac/i$b;)V
    .locals 0

    iput-object p1, p0, Lac/i$b$c;->a:Lac/i$b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Llb/f;

    .line 2
    .line 3
    const-string v0, "it"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lac/i$b$c;->a:Lac/i$b;

    .line 9
    .line 10
    iget-object v2, v1, Lac/i$b;->a:Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    sget-object v3, Lgb/h;->y:Lgb/h$a;

    .line 13
    .line 14
    const-string v4, "PARSER"

    .line 15
    .line 16
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, [B

    .line 24
    .line 25
    iget-object v1, v1, Lac/i$b;->i:Lac/i;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 30
    .line 31
    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Lac/i$b$a;

    .line 35
    .line 36
    invoke-direct {v2, v3, v4, v1}, Lac/i$b$a;-><init>(Lmb/b;Ljava/io/ByteArrayInputStream;Lac/i;)V

    .line 37
    .line 38
    .line 39
    new-instance v3, Llc/g;

    .line 40
    .line 41
    new-instance v4, Llc/o;

    .line 42
    .line 43
    invoke-direct {v4, v2}, Llc/o;-><init>(Lac/i$b$a;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {v3, v2, v4}, Llc/g;-><init>(Lx9/a;Lx9/l;)V

    .line 47
    .line 48
    .line 49
    instance-of v2, v3, Llc/a;

    .line 50
    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance v2, Llc/a;

    .line 55
    .line 56
    invoke-direct {v2, v3}, Llc/a;-><init>(Llc/h;)V

    .line 57
    .line 58
    .line 59
    move-object v3, v2

    .line 60
    :goto_0
    invoke-static {v3}, Llc/w;->c1(Llc/h;)Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v2}, Lb8/f;->Z(Ljava/util/List;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Ljava/util/Collection;

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    sget-object v2, Lm9/v;->a:Lm9/v;

    .line 72
    .line 73
    :goto_1
    move-object v3, v2

    .line 74
    check-cast v3, Ljava/lang/Iterable;

    .line 75
    .line 76
    new-instance v4, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_4

    .line 94
    .line 95
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Lgb/h;

    .line 100
    .line 101
    iget-object v5, v1, Lac/i;->b:Lyb/n;

    .line 102
    .line 103
    iget-object v5, v5, Lyb/n;->i:Lyb/z;

    .line 104
    .line 105
    invoke-static {v3, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5, v3}, Lyb/z;->e(Lgb/h;)Lac/l;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v1, v3}, Lac/i;->r(Lac/l;)Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_3

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_3
    const/4 v3, 0x0

    .line 120
    :goto_3
    if-eqz v3, :cond_2

    .line 121
    .line 122
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_4
    invoke-virtual {v1, p1, v4}, Lac/i;->j(Llb/f;Ljava/util/ArrayList;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/d0;->i(Ljava/util/ArrayList;)Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Ljava/util/Collection;

    .line 134
    .line 135
    return-object p1
.end method
