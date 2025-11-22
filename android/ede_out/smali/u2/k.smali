.class public final Lu2/k;
.super Lu2/x;
.source "SourceFile"


# instance fields
.field public a:Lk9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk9/a<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lx2/c;

.field public c:Lk9/a;

.field public d:Lk9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk9/a<",
            "Lb3/r;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lk9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk9/a<",
            "Lu2/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Lu2/x;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lu2/o$a;->a:Lu2/o;

    .line 9
    .line 10
    invoke-static {v2}, Lx2/a;->a(Lx2/b;)Lk9/a;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iput-object v2, v0, Lu2/k;->a:Lk9/a;

    .line 15
    .line 16
    new-instance v2, Lx2/c;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-direct {v2, v1}, Lx2/c;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object v2, v0, Lu2/k;->b:Lx2/c;

    .line 24
    .line 25
    sget-object v7, Ld3/c$a;->a:Ld3/c;

    .line 26
    .line 27
    new-instance v1, Lv2/j;

    .line 28
    .line 29
    invoke-direct {v1, v2}, Lv2/j;-><init>(Lx2/c;)V

    .line 30
    .line 31
    .line 32
    new-instance v3, Lv2/l;

    .line 33
    .line 34
    invoke-direct {v3, v2, v1}, Lv2/l;-><init>(Lx2/c;Lv2/j;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v3}, Lx2/a;->a(Lx2/b;)Lk9/a;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iput-object v1, v0, Lu2/k;->c:Lk9/a;

    .line 42
    .line 43
    iget-object v1, v0, Lu2/k;->b:Lx2/c;

    .line 44
    .line 45
    new-instance v2, Lb3/y;

    .line 46
    .line 47
    invoke-direct {v2, v1}, Lb3/y;-><init>(Lk9/a;)V

    .line 48
    .line 49
    .line 50
    new-instance v3, Lb3/g;

    .line 51
    .line 52
    invoke-direct {v3, v1}, Lb3/g;-><init>(Lk9/a;)V

    .line 53
    .line 54
    .line 55
    sget-object v1, Lb3/i$a;->a:Lb3/i;

    .line 56
    .line 57
    new-instance v4, Lu2/y;

    .line 58
    .line 59
    const/4 v5, 0x1

    .line 60
    invoke-direct {v4, v1, v2, v3, v5}, Lu2/y;-><init>(Lx2/b;Lx2/b;Lx2/b;I)V

    .line 61
    .line 62
    .line 63
    invoke-static {v4}, Lx2/a;->a(Lx2/b;)Lk9/a;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iput-object v1, v0, Lu2/k;->d:Lk9/a;

    .line 68
    .line 69
    new-instance v6, Lz2/f;

    .line 70
    .line 71
    invoke-direct {v6}, Lz2/f;-><init>()V

    .line 72
    .line 73
    .line 74
    iget-object v2, v0, Lu2/k;->b:Lx2/c;

    .line 75
    .line 76
    new-instance v16, Lz2/g;

    .line 77
    .line 78
    const/4 v8, 0x0

    .line 79
    move-object/from16 v3, v16

    .line 80
    .line 81
    move-object v4, v2

    .line 82
    move-object v5, v1

    .line 83
    invoke-direct/range {v3 .. v8}, Lz2/g;-><init>(Lk9/a;Lk9/a;Lx2/b;Lk9/a;I)V

    .line 84
    .line 85
    .line 86
    iget-object v3, v0, Lu2/k;->a:Lk9/a;

    .line 87
    .line 88
    iget-object v4, v0, Lu2/k;->c:Lk9/a;

    .line 89
    .line 90
    new-instance v5, Lz2/d;

    .line 91
    .line 92
    move-object v8, v5

    .line 93
    move-object v9, v3

    .line 94
    move-object v10, v4

    .line 95
    move-object/from16 v11, v16

    .line 96
    .line 97
    move-object v12, v1

    .line 98
    move-object v13, v1

    .line 99
    invoke-direct/range {v8 .. v13}, Lz2/d;-><init>(Lk9/a;Lk9/a;Lz2/g;Lk9/a;Lk9/a;)V

    .line 100
    .line 101
    .line 102
    new-instance v6, La3/n;

    .line 103
    .line 104
    move-object v8, v6

    .line 105
    move-object v9, v2

    .line 106
    move-object v11, v1

    .line 107
    move-object/from16 v12, v16

    .line 108
    .line 109
    move-object v13, v3

    .line 110
    move-object v14, v1

    .line 111
    move-object v15, v1

    .line 112
    invoke-direct/range {v8 .. v15}, La3/n;-><init>(Lk9/a;Lk9/a;Lk9/a;Lz2/g;Lk9/a;Lk9/a;Lk9/a;)V

    .line 113
    .line 114
    .line 115
    new-instance v2, Lz2/g;

    .line 116
    .line 117
    const/4 v13, 0x1

    .line 118
    move-object v8, v2

    .line 119
    move-object v9, v3

    .line 120
    move-object v10, v1

    .line 121
    move-object/from16 v11, v16

    .line 122
    .line 123
    move-object v12, v1

    .line 124
    invoke-direct/range {v8 .. v13}, Lz2/g;-><init>(Lk9/a;Lk9/a;Lx2/b;Lk9/a;I)V

    .line 125
    .line 126
    .line 127
    new-instance v1, Lu2/y;

    .line 128
    .line 129
    const/4 v3, 0x0

    .line 130
    invoke-direct {v1, v5, v6, v2, v3}, Lu2/y;-><init>(Lx2/b;Lx2/b;Lx2/b;I)V

    .line 131
    .line 132
    .line 133
    invoke-static {v1}, Lx2/a;->a(Lx2/b;)Lk9/a;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    iput-object v1, v0, Lu2/k;->e:Lk9/a;

    .line 138
    .line 139
    return-void

    .line 140
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    .line 141
    .line 142
    const-string v2, "instance cannot be null"

    .line 143
    .line 144
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw v1
.end method
