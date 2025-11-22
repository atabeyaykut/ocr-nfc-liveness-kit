.class public final Leb/h$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb/s$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leb/h$a;->c(Llb/f;)Leb/s$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lqb/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Leb/h;

.field public final synthetic c:Llb/f;

.field public final synthetic d:Leb/h$a;


# direct methods
.method public constructor <init>(Leb/h;Llb/f;Leb/h$a;)V
    .locals 0

    iput-object p1, p0, Leb/h$a$a;->b:Leb/h;

    iput-object p2, p0, Leb/h$a$a;->c:Llb/f;

    iput-object p3, p0, Leb/h$a$a;->d:Leb/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Leb/h$a$a;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Leb/h$a$a;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Leb/h$a$a;->d:Leb/h$a;

    .line 4
    .line 5
    check-cast v1, Leb/i;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v2, "elements"

    .line 11
    .line 12
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Leb/h$a$a;->c:Llb/f;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_0
    iget-object v3, v1, Leb/i;->d:Lma/e;

    .line 22
    .line 23
    invoke-static {v2, v3}, Lc5/y;->n(Llb/f;Lma/e;)Lma/a1;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    iget-object v1, v1, Leb/i;->b:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/d0;->i(Ljava/util/ArrayList;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v3}, Lma/z0;->getType()Lcc/e0;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const-string v4, "parameter.type"

    .line 40
    .line 41
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v4, Lqb/b;

    .line 45
    .line 46
    new-instance v5, Lqb/h;

    .line 47
    .line 48
    invoke-direct {v5, v3}, Lqb/h;-><init>(Lcc/e0;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {v4, v0, v5}, Lqb/b;-><init>(Ljava/util/List;Lx9/l;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_1
    iget-object v3, v1, Leb/i;->c:Leb/h;

    .line 59
    .line 60
    iget-object v4, v1, Leb/i;->e:Llb/b;

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Leb/d;->p(Llb/b;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_4

    .line 67
    .line 68
    invoke-virtual {v2}, Llb/f;->o()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const-string v3, "value"

    .line 73
    .line 74
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_4

    .line 79
    .line 80
    new-instance v2, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_3

    .line 94
    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    instance-of v4, v3, Lqb/a;

    .line 100
    .line 101
    if-eqz v4, :cond_2

    .line 102
    .line 103
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_3
    iget-object v0, v1, Leb/i;->f:Ljava/util/List;

    .line 108
    .line 109
    check-cast v0, Ljava/util/Collection;

    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_4

    .line 120
    .line 121
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Lqb/a;

    .line 126
    .line 127
    iget-object v2, v2, Lqb/g;->a:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v2, Lna/c;

    .line 130
    .line 131
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_4
    :goto_2
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Leb/h$a$a;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Leb/h$a$a;->b:Leb/h;

    iget-object v2, p0, Leb/h$a$a;->c:Llb/f;

    invoke-static {v1, v2, p1}, Leb/h;->u(Leb/h;Llb/f;Ljava/lang/Object;)Lqb/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Lqb/f;)V
    .locals 2

    iget-object v0, p0, Leb/h$a$a;->a:Ljava/util/ArrayList;

    new-instance v1, Lqb/s;

    invoke-direct {v1, p1}, Lqb/s;-><init>(Lqb/f;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Llb/b;Llb/f;)V
    .locals 2

    iget-object v0, p0, Leb/h$a$a;->a:Ljava/util/ArrayList;

    new-instance v1, Lqb/k;

    invoke-direct {v1, p1, p2}, Lqb/k;-><init>(Llb/b;Llb/f;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e(Llb/b;)Leb/s$a;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lma/r0;->a:Lma/r0$a;

    iget-object v2, p0, Leb/h$a$a;->b:Leb/h;

    invoke-virtual {v2, p1, v1, v0}, Leb/h;->q(Llb/b;Lma/r0;Ljava/util/List;)Leb/i;

    move-result-object p1

    new-instance v1, Leb/h$a$a$a;

    invoke-direct {v1, p1, p0, v0}, Leb/h$a$a$a;-><init>(Leb/i;Leb/h$a$a;Ljava/util/ArrayList;)V

    return-object v1
.end method
