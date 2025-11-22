.class public final Lh6/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lh5/k<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Boolean;

.field public final synthetic b:Lh6/q;


# direct methods
.method public constructor <init>(Lh6/q;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lh6/p;->b:Lh6/q;

    iput-object p2, p0, Lh6/p;->a:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh6/p;->a:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "FirebaseCrashlytics"

    .line 8
    .line 9
    iget-object v3, p0, Lh6/p;->b:Lh6/q;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v1, :cond_2

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-string v0, "Deleting cached crash reports..."

    .line 22
    .line 23
    invoke-static {v2, v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, v3, Lh6/q;->b:Lh6/t;

    .line 27
    .line 28
    sget-object v1, Lh6/t;->p:Lh6/i;

    .line 29
    .line 30
    iget-object v0, v0, Lh6/t;->f:Lm6/f;

    .line 31
    .line 32
    iget-object v0, v0, Lm6/f;->a:Ljava/io/File;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lm6/f;->d([Ljava/lang/Object;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Ljava/io/File;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, v3, Lh6/q;->b:Lh6/t;

    .line 63
    .line 64
    iget-object v1, v0, Lh6/t;->k:Lh6/m0;

    .line 65
    .line 66
    iget-object v1, v1, Lh6/m0;->b:Lm6/e;

    .line 67
    .line 68
    iget-object v1, v1, Lm6/e;->b:Lm6/f;

    .line 69
    .line 70
    iget-object v2, v1, Lm6/f;->c:Ljava/io/File;

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v2}, Lm6/f;->d([Ljava/lang/Object;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v2}, Lm6/e;->a(Ljava/util/List;)V

    .line 81
    .line 82
    .line 83
    iget-object v2, v1, Lm6/f;->d:Ljava/io/File;

    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-static {v2}, Lm6/f;->d([Ljava/lang/Object;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {v2}, Lm6/e;->a(Ljava/util/List;)V

    .line 94
    .line 95
    .line 96
    iget-object v1, v1, Lm6/f;->e:Ljava/io/File;

    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {v1}, Lm6/f;->d([Ljava/lang/Object;)Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {v1}, Lm6/e;->a(Ljava/util/List;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, v0, Lh6/t;->o:Lh5/l;

    .line 110
    .line 111
    invoke-virtual {v0, v4}, Lh5/l;->d(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v4}, Lh5/n;->e(Ljava/lang/Object;)Lh5/z;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    goto :goto_1

    .line 119
    :cond_2
    const/4 v1, 0x3

    .line 120
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_3

    .line 125
    .line 126
    const-string v1, "Sending cached crash reports..."

    .line 127
    .line 128
    invoke-static {v2, v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .line 130
    .line 131
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    iget-object v1, v3, Lh6/q;->b:Lh6/t;

    .line 136
    .line 137
    iget-object v1, v1, Lh6/t;->b:Lh6/c0;

    .line 138
    .line 139
    if-eqz v0, :cond_4

    .line 140
    .line 141
    iget-object v0, v1, Lh6/c0;->f:Lh5/l;

    .line 142
    .line 143
    invoke-virtual {v0, v4}, Lh5/l;->d(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, v3, Lh6/q;->b:Lh6/t;

    .line 147
    .line 148
    iget-object v0, v0, Lh6/t;->d:Lh6/f;

    .line 149
    .line 150
    iget-object v0, v0, Lh6/f;->a:Ljava/util/concurrent/Executor;

    .line 151
    .line 152
    new-instance v1, Lh6/o;

    .line 153
    .line 154
    invoke-direct {v1, p0, v0}, Lh6/o;-><init>(Lh6/p;Ljava/util/concurrent/Executor;)V

    .line 155
    .line 156
    .line 157
    iget-object v2, v3, Lh6/q;->a:Lh5/k;

    .line 158
    .line 159
    invoke-virtual {v2, v0, v1}, Lh5/k;->n(Ljava/util/concurrent/Executor;Lh5/j;)Lh5/k;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    :goto_1
    return-object v0

    .line 164
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 168
    .line 169
    const-string v1, "An invalid data collection token was used."

    .line 170
    .line 171
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw v0
.end method
