.class public final Lpc/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpc/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lpc/i<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final a:Lpc/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpc/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lpc/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpc/a<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpc/a$a;->a:Lpc/a;

    sget-object p1, Lc5/y;->m:Lkotlinx/coroutines/internal/u;

    iput-object p1, p0, Lpc/a$a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lp9/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpc/a$a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    sget-object v1, Lc5/y;->m:Lkotlinx/coroutines/internal/u;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    instance-of p1, v0, Lpc/k;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    check-cast v0, Lpc/k;

    .line 14
    .line 15
    iget-object p1, v0, Lpc/k;->d:Ljava/lang/Throwable;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0}, Lpc/k;->O()Ljava/lang/Throwable;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sget v0, Lkotlinx/coroutines/internal/t;->a:I

    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    const/4 v2, 0x1

    .line 28
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :cond_2
    iget-object v0, p0, Lpc/a$a;->a:Lpc/a;

    .line 34
    .line 35
    invoke-virtual {v0}, Lpc/a;->B()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    iput-object v4, p0, Lpc/a$a;->b:Ljava/lang/Object;

    .line 40
    .line 41
    if-eq v4, v1, :cond_5

    .line 42
    .line 43
    instance-of p1, v4, Lpc/k;

    .line 44
    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    check-cast v4, Lpc/k;

    .line 48
    .line 49
    iget-object p1, v4, Lpc/k;->d:Ljava/lang/Throwable;

    .line 50
    .line 51
    if-nez p1, :cond_3

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    invoke-virtual {v4}, Lpc/k;->O()Ljava/lang/Throwable;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    sget v0, Lkotlinx/coroutines/internal/t;->a:I

    .line 59
    .line 60
    throw p1

    .line 61
    :cond_4
    const/4 v2, 0x1

    .line 62
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    return-object p1

    .line 67
    :cond_5
    invoke-static {p1}, Lc5/w;->x(Lp9/d;)Lp9/d;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/d0;->u(Lp9/d;)Lnc/j;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    new-instance v2, Lpc/a$d;

    .line 76
    .line 77
    invoke-direct {v2, p0, p1}, Lpc/a$d;-><init>(Lpc/a$a;Lnc/j;)V

    .line 78
    .line 79
    .line 80
    :cond_6
    invoke-virtual {v0, v2}, Lpc/a;->t(Lpc/s;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_7

    .line 85
    .line 86
    new-instance v1, Lpc/a$f;

    .line 87
    .line 88
    invoke-direct {v1, v0, v2}, Lpc/a$f;-><init>(Lpc/a;Lpc/s;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v1}, Lnc/j;->D(Lx9/l;)V

    .line 92
    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_7
    invoke-virtual {v0}, Lpc/a;->B()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    iput-object v3, p0, Lpc/a$a;->b:Ljava/lang/Object;

    .line 100
    .line 101
    instance-of v4, v3, Lpc/k;

    .line 102
    .line 103
    if-eqz v4, :cond_9

    .line 104
    .line 105
    check-cast v3, Lpc/k;

    .line 106
    .line 107
    iget-object v0, v3, Lpc/k;->d:Ljava/lang/Throwable;

    .line 108
    .line 109
    if-nez v0, :cond_8

    .line 110
    .line 111
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_8
    invoke-virtual {v3}, Lpc/k;->O()Ljava/lang/Throwable;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {v0}, Lc5/w;->j(Ljava/lang/Throwable;)Ll9/h$a;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    :goto_2
    invoke-virtual {p1, v0}, Lnc/j;->resumeWith(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_9
    if-eq v3, v1, :cond_6

    .line 127
    .line 128
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 129
    .line 130
    iget-object v0, v0, Lpc/b;->a:Lx9/l;

    .line 131
    .line 132
    if-nez v0, :cond_a

    .line 133
    .line 134
    const/4 v0, 0x0

    .line 135
    goto :goto_3

    .line 136
    :cond_a
    new-instance v2, Lkotlinx/coroutines/internal/n;

    .line 137
    .line 138
    iget-object v4, p1, Lnc/j;->e:Lp9/f;

    .line 139
    .line 140
    invoke-direct {v2, v0, v3, v4}, Lkotlinx/coroutines/internal/n;-><init>(Lx9/l;Ljava/lang/Object;Lp9/f;)V

    .line 141
    .line 142
    .line 143
    move-object v0, v2

    .line 144
    :goto_3
    iget v2, p1, Lnc/i0;->c:I

    .line 145
    .line 146
    invoke-virtual {p1, v1, v2, v0}, Lnc/j;->u(Ljava/lang/Object;ILx9/l;)V

    .line 147
    .line 148
    .line 149
    :goto_4
    invoke-virtual {p1}, Lnc/j;->m()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    return-object p1
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lpc/a$a;->b:Ljava/lang/Object;

    instance-of v1, v0, Lpc/k;

    if-nez v1, :cond_1

    sget-object v1, Lc5/y;->m:Lkotlinx/coroutines/internal/u;

    if-eq v0, v1, :cond_0

    iput-object v1, p0, Lpc/a$a;->b:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'hasNext\' should be called prior to \'next\' invocation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Lpc/k;

    invoke-virtual {v0}, Lpc/k;->O()Ljava/lang/Throwable;

    move-result-object v0

    sget v1, Lkotlinx/coroutines/internal/t;->a:I

    throw v0
.end method
