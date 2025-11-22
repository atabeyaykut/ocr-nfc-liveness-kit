.class public final Lac/d$i;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lac/d;-><init>(Lyb/n;Lgb/b;Lib/c;Lib/a;Lma/r0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ljava/util/Collection<",
        "+",
        "Lma/e;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lac/d;


# direct methods
.method public constructor <init>(Lac/d;)V
    .locals 0

    iput-object p1, p0, Lac/d$i;->a:Lac/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lma/a0;->b:Lma/a0;

    .line 2
    .line 3
    sget-object v1, Lm9/v;->a:Lm9/v;

    .line 4
    .line 5
    iget-object v2, p0, Lac/d$i;->a:Lac/d;

    .line 6
    .line 7
    iget-object v3, v2, Lac/d;->j:Lma/a0;

    .line 8
    .line 9
    if-eq v3, v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    iget-object v3, v2, Lac/d;->e:Lgb/b;

    .line 14
    .line 15
    iget-object v3, v3, Lgb/b;->x:Ljava/util/List;

    .line 16
    .line 17
    const-string v4, "fqNames"

    .line 18
    .line 19
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    move-object v4, v3

    .line 23
    check-cast v4, Ljava/util/Collection;

    .line 24
    .line 25
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x1

    .line 30
    xor-int/2addr v4, v5

    .line 31
    if-eqz v4, :cond_2

    .line 32
    .line 33
    check-cast v3, Ljava/lang/Iterable;

    .line 34
    .line 35
    new-instance v1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_5

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Ljava/lang/Integer;

    .line 55
    .line 56
    iget-object v4, v2, Lac/d;->m:Lyb/n;

    .line 57
    .line 58
    iget-object v5, v4, Lyb/n;->a:Lyb/l;

    .line 59
    .line 60
    const-string v6, "index"

    .line 61
    .line 62
    invoke-static {v3, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    iget-object v4, v4, Lyb/n;->b:Lib/c;

    .line 70
    .line 71
    invoke-static {v4, v3}, La6/a;->n(Lib/c;I)Llb/b;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v5, v3}, Lyb/l;->b(Llb/b;)Lma/e;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    if-eqz v3, :cond_1

    .line 80
    .line 81
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    iget-object v3, v2, Lac/d;->j:Lma/a0;

    .line 86
    .line 87
    if-eq v3, v0, :cond_3

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 91
    .line 92
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 93
    .line 94
    .line 95
    iget-object v1, v2, Lac/d;->s:Lma/j;

    .line 96
    .line 97
    instance-of v3, v1, Lma/e0;

    .line 98
    .line 99
    if-eqz v3, :cond_4

    .line 100
    .line 101
    check-cast v1, Lma/e0;

    .line 102
    .line 103
    invoke-interface {v1}, Lma/e0;->o()Lvb/i;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const/4 v3, 0x0

    .line 108
    invoke-static {v2, v0, v1, v3}, Lob/b;->t(Lac/d;Ljava/util/LinkedHashSet;Lvb/i;Z)V

    .line 109
    .line 110
    .line 111
    :cond_4
    invoke-virtual {v2}, Lpa/b;->x0()Lvb/i;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const-string v3, "sealedClass.unsubstitutedInnerClassesScope"

    .line 116
    .line 117
    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v2, v0, v1, v5}, Lob/b;->t(Lac/d;Ljava/util/LinkedHashSet;Lvb/i;Z)V

    .line 121
    .line 122
    .line 123
    new-instance v1, Lob/a;

    .line 124
    .line 125
    invoke-direct {v1}, Lob/a;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-static {v0, v1}, Lm9/t;->s1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    move-object v1, v0

    .line 133
    check-cast v1, Ljava/util/Collection;

    .line 134
    .line 135
    :cond_5
    :goto_1
    return-object v1
.end method
