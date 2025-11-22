.class public final Lio/realm/o0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/io/File;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:I

.field public final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/s0;",
            ">;>;"
        }
    .end annotation
.end field

.field public g:Lj9/b;

.field public h:Lc5/b4;

.field public final i:J

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/realm/o0$a;->e:Ljava/util/HashSet;

    .line 10
    .line 11
    new-instance v1, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lio/realm/o0$a;->f:Ljava/util/HashSet;

    .line 17
    .line 18
    const-wide v1, 0x7fffffffffffffffL

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    iput-wide v1, p0, Lio/realm/o0$a;->i:J

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-static {p1}, Lio/realm/internal/m;->a(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lio/realm/o0$a;->a:Ljava/io/File;

    .line 35
    .line 36
    const-string p1, "default.realm"

    .line 37
    .line 38
    iput-object p1, p0, Lio/realm/o0$a;->b:Ljava/lang/String;

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lio/realm/o0$a;->c:Z

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    iput v1, p0, Lio/realm/o0$a;->d:I

    .line 45
    .line 46
    sget-object v2, Lio/realm/o0;->r:Ljava/lang/Object;

    .line 47
    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :cond_0
    iput-boolean p1, p0, Lio/realm/o0$a;->j:Z

    .line 54
    .line 55
    iput-boolean v1, p0, Lio/realm/o0$a;->k:Z

    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string v0, "Call `Realm.init(Context)` before creating a RealmConfiguration"

    .line 61
    .line 62
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method


# virtual methods
.method public final a()Lio/realm/o0;
    .locals 12

    .line 1
    iget-object v0, p0, Lio/realm/o0$a;->g:Lj9/b;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lio/realm/internal/Util;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lio/realm/internal/Util;->a:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    :try_start_1
    sget v1, Ly8/b;->a:I

    .line 13
    .line 14
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    .line 16
    sput-object v1, Lio/realm/internal/Util;->a:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    :try_start_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 20
    .line 21
    sput-object v1, Lio/realm/internal/Util;->a:Ljava/lang/Boolean;

    .line 22
    .line 23
    :cond_0
    :goto_0
    sget-object v1, Lio/realm/internal/Util;->a:Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    monitor-exit v0

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    new-instance v0, Lj9/b;

    .line 33
    .line 34
    invoke-direct {v0}, Lj9/b;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lio/realm/o0$a;->g:Lj9/b;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    monitor-exit v0

    .line 42
    throw v1

    .line 43
    :cond_1
    :goto_1
    iget-object v0, p0, Lio/realm/o0$a;->h:Lc5/b4;

    .line 44
    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    invoke-static {}, Lio/realm/internal/Util;->b()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    new-instance v0, Lc5/b4;

    .line 54
    .line 55
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-direct {v0, v1}, Lc5/b4;-><init>(Ljava/lang/Boolean;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lio/realm/o0$a;->h:Lc5/b4;

    .line 61
    .line 62
    :cond_2
    new-instance v0, Lio/realm/o0;

    .line 63
    .line 64
    new-instance v3, Ljava/io/File;

    .line 65
    .line 66
    iget-object v1, p0, Lio/realm/o0$a;->a:Ljava/io/File;

    .line 67
    .line 68
    iget-object v2, p0, Lio/realm/o0$a;->b:Ljava/lang/String;

    .line 69
    .line 70
    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-boolean v4, p0, Lio/realm/o0$a;->c:Z

    .line 74
    .line 75
    iget v5, p0, Lio/realm/o0$a;->d:I

    .line 76
    .line 77
    iget-object v1, p0, Lio/realm/o0$a;->e:Ljava/util/HashSet;

    .line 78
    .line 79
    iget-object v2, p0, Lio/realm/o0$a;->f:Ljava/util/HashSet;

    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-lez v6, :cond_3

    .line 86
    .line 87
    new-instance v1, Lh9/b;

    .line 88
    .line 89
    sget-object v6, Lio/realm/o0;->s:Lio/realm/internal/o;

    .line 90
    .line 91
    invoke-direct {v1, v6, v2}, Lh9/b;-><init>(Lio/realm/internal/o;Ljava/util/HashSet;)V

    .line 92
    .line 93
    .line 94
    :goto_2
    move-object v6, v1

    .line 95
    goto :goto_4

    .line 96
    :cond_3
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    const/4 v6, 0x1

    .line 101
    if-ne v2, v6, :cond_4

    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {v1}, Lio/realm/o0;->a(Ljava/lang/String;)Lio/realm/internal/o;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    goto :goto_2

    .line 124
    :cond_4
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    new-array v2, v2, [Lio/realm/internal/o;

    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    const/4 v7, 0x0

    .line 135
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    if-eqz v8, :cond_5

    .line 140
    .line 141
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    invoke-static {v8}, Lio/realm/o0;->a(Ljava/lang/String;)Lio/realm/internal/o;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    aput-object v8, v2, v7

    .line 158
    .line 159
    add-int/2addr v7, v6

    .line 160
    goto :goto_3

    .line 161
    :cond_5
    new-instance v1, Lh9/a;

    .line 162
    .line 163
    invoke-direct {v1, v2}, Lh9/a;-><init>([Lio/realm/internal/o;)V

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :goto_4
    iget-object v7, p0, Lio/realm/o0$a;->g:Lj9/b;

    .line 168
    .line 169
    iget-wide v8, p0, Lio/realm/o0$a;->i:J

    .line 170
    .line 171
    iget-boolean v10, p0, Lio/realm/o0$a;->j:Z

    .line 172
    .line 173
    iget-boolean v11, p0, Lio/realm/o0$a;->k:Z

    .line 174
    .line 175
    move-object v2, v0

    .line 176
    invoke-direct/range {v2 .. v11}, Lio/realm/o0;-><init>(Ljava/io/File;ZILio/realm/internal/o;Lj9/c;JZZ)V

    .line 177
    .line 178
    .line 179
    return-object v0
.end method
