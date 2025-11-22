.class public final Lla/o;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lma/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lza/e;

.field public final synthetic b:Lma/e;


# direct methods
.method public constructor <init>(Lza/e;Lma/e;)V
    .locals 0

    iput-object p1, p0, Lla/o;->a:Lza/e;

    iput-object p2, p0, Lla/o;->b:Lma/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lla/o;->a:Lza/e;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v2, Lza/e;

    .line 9
    .line 10
    iget-object v3, v1, Lza/e;->l:Lp4/g7;

    .line 11
    .line 12
    iget-object v4, v3, Lp4/g7;->a:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v4, Lya/c;

    .line 15
    .line 16
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v15, Lya/c;

    .line 20
    .line 21
    move-object v5, v15

    .line 22
    iget-object v6, v4, Lya/c;->a:Lbc/l;

    .line 23
    .line 24
    iget-object v7, v4, Lya/c;->b:Lva/l;

    .line 25
    .line 26
    iget-object v8, v4, Lya/c;->c:Leb/q;

    .line 27
    .line 28
    iget-object v9, v4, Lya/c;->d:Leb/k;

    .line 29
    .line 30
    iget-object v10, v4, Lya/c;->e:Lwa/k;

    .line 31
    .line 32
    iget-object v11, v4, Lya/c;->f:Lyb/u;

    .line 33
    .line 34
    iget-object v12, v4, Lya/c;->h:Lwa/g;

    .line 35
    .line 36
    iget-object v13, v4, Lya/c;->i:Lub/a;

    .line 37
    .line 38
    iget-object v14, v4, Lya/c;->j:Lbb/b;

    .line 39
    .line 40
    move-object/from16 v16, v15

    .line 41
    .line 42
    iget-object v15, v4, Lya/c;->k:Lya/h;

    .line 43
    .line 44
    move-object/from16 v28, v2

    .line 45
    .line 46
    move-object/from16 v2, v16

    .line 47
    .line 48
    iget-object v0, v4, Lya/c;->l:Leb/x;

    .line 49
    .line 50
    move-object/from16 v16, v0

    .line 51
    .line 52
    iget-object v0, v4, Lya/c;->m:Lma/u0;

    .line 53
    .line 54
    move-object/from16 v17, v0

    .line 55
    .line 56
    iget-object v0, v4, Lya/c;->n:Lua/b;

    .line 57
    .line 58
    move-object/from16 v18, v0

    .line 59
    .line 60
    iget-object v0, v4, Lya/c;->o:Lma/b0;

    .line 61
    .line 62
    move-object/from16 v19, v0

    .line 63
    .line 64
    iget-object v0, v4, Lya/c;->p:Lja/m;

    .line 65
    .line 66
    move-object/from16 v20, v0

    .line 67
    .line 68
    iget-object v0, v4, Lya/c;->q:Lva/e;

    .line 69
    .line 70
    move-object/from16 v21, v0

    .line 71
    .line 72
    iget-object v0, v4, Lya/c;->r:Ldb/t;

    .line 73
    .line 74
    move-object/from16 v22, v0

    .line 75
    .line 76
    iget-object v0, v4, Lya/c;->s:Lva/m;

    .line 77
    .line 78
    move-object/from16 v23, v0

    .line 79
    .line 80
    iget-object v0, v4, Lya/c;->t:Lya/d;

    .line 81
    .line 82
    move-object/from16 v24, v0

    .line 83
    .line 84
    iget-object v0, v4, Lya/c;->u:Ldc/l;

    .line 85
    .line 86
    move-object/from16 v25, v0

    .line 87
    .line 88
    iget-object v0, v4, Lya/c;->v:Lva/s;

    .line 89
    .line 90
    move-object/from16 v26, v0

    .line 91
    .line 92
    iget-object v0, v4, Lya/c;->w:Lva/p;

    .line 93
    .line 94
    move-object/from16 v27, v0

    .line 95
    .line 96
    invoke-direct/range {v5 .. v27}, Lya/c;-><init>(Lbc/l;Lva/l;Leb/q;Leb/k;Lwa/k;Lyb/u;Lwa/g;Lub/a;Lbb/b;Lya/h;Leb/x;Lma/u0;Lua/b;Lma/b0;Lja/m;Lva/e;Ldb/t;Lva/m;Lya/d;Ldc/l;Lva/s;Lva/p;)V

    .line 97
    .line 98
    .line 99
    new-instance v0, Lp4/g7;

    .line 100
    .line 101
    iget-object v4, v3, Lp4/g7;->b:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v4, Lya/j;

    .line 104
    .line 105
    iget-object v3, v3, Lp4/g7;->c:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v3, Ll9/e;

    .line 108
    .line 109
    invoke-direct {v0, v2, v4, v3}, Lp4/g7;-><init>(Lya/c;Lya/j;Ll9/e;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Lpa/m;->b()Lma/j;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    const-string v3, "containingDeclaration"

    .line 117
    .line 118
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object v1, v1, Lza/e;->j:Lcb/g;

    .line 122
    .line 123
    move-object/from16 v3, p0

    .line 124
    .line 125
    iget-object v4, v3, Lla/o;->b:Lma/e;

    .line 126
    .line 127
    move-object/from16 v5, v28

    .line 128
    .line 129
    invoke-direct {v5, v0, v2, v1, v4}, Lza/e;-><init>(Lp4/g7;Lma/j;Lcb/g;Lma/e;)V

    .line 130
    .line 131
    .line 132
    return-object v5
.end method
