.class public final Lcom/google/android/gms/internal/clearcut/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/clearcut/p2;


# static fields
.field public static final b:Lcom/google/android/gms/internal/clearcut/p1;


# instance fields
.field public final a:Lcom/google/android/gms/internal/clearcut/w1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/clearcut/p1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/p1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/o1;->b:Lcom/google/android/gms/internal/clearcut/p1;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/clearcut/q1;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [Lcom/google/android/gms/internal/clearcut/w1;

    .line 5
    .line 6
    sget-object v2, Lcom/google/android/gms/internal/clearcut/u0;->a:Lcom/google/android/gms/internal/clearcut/u0;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 10
    .line 11
    :try_start_0
    const-string v2, "com.google.protobuf.DescriptorMessageInfoFactory"

    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v4, "getInstance"

    .line 18
    .line 19
    new-array v5, v3, [Ljava/lang/Class;

    .line 20
    .line 21
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    new-array v3, v3, [Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/google/android/gms/internal/clearcut/w1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    sget-object v2, Lcom/google/android/gms/internal/clearcut/o1;->b:Lcom/google/android/gms/internal/clearcut/p1;

    .line 36
    .line 37
    :goto_0
    const/4 v3, 0x1

    .line 38
    aput-object v2, v1, v3

    .line 39
    .line 40
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/clearcut/q1;-><init>([Lcom/google/android/gms/internal/clearcut/w1;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    sget-object v1, Lcom/google/android/gms/internal/clearcut/x0;->a:Ljava/nio/charset/Charset;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/o1;->a:Lcom/google/android/gms/internal/clearcut/w1;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/clearcut/o2;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/clearcut/o2<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/clearcut/q2;->a:Ljava/lang/Class;

    .line 2
    .line 3
    const-class v0, Lcom/google/android/gms/internal/clearcut/v0;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    sget-object v1, Lcom/google/android/gms/internal/clearcut/q2;->a:Ljava/lang/Class;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/o1;->a:Lcom/google/android/gms/internal/clearcut/w1;

    .line 31
    .line 32
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/clearcut/w1;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/clearcut/v1;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v2}, Lcom/google/android/gms/internal/clearcut/v1;->b()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const-string v3, "Protobuf runtime is not correctly loaded."

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz v1, :cond_4

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    sget-object p1, Lcom/google/android/gms/internal/clearcut/q2;->d:Lcom/google/android/gms/internal/clearcut/c3;

    .line 51
    .line 52
    sget-object v0, Lcom/google/android/gms/internal/clearcut/m0;->a:Lcom/google/android/gms/internal/clearcut/k0;

    .line 53
    .line 54
    invoke-interface {v2}, Lcom/google/android/gms/internal/clearcut/v1;->c()Lcom/google/android/gms/internal/clearcut/x1;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    new-instance v2, Lcom/google/android/gms/internal/clearcut/c2;

    .line 59
    .line 60
    invoke-direct {v2, p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/c2;-><init>(Lcom/google/android/gms/internal/clearcut/a3;Lcom/google/android/gms/internal/clearcut/j0;Lcom/google/android/gms/internal/clearcut/x1;)V

    .line 61
    .line 62
    .line 63
    return-object v2

    .line 64
    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/clearcut/q2;->b:Lcom/google/android/gms/internal/clearcut/a3;

    .line 65
    .line 66
    sget-object v0, Lcom/google/android/gms/internal/clearcut/m0;->b:Lcom/google/android/gms/internal/clearcut/j0;

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    invoke-interface {v2}, Lcom/google/android/gms/internal/clearcut/v1;->c()Lcom/google/android/gms/internal/clearcut/x1;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    new-instance v2, Lcom/google/android/gms/internal/clearcut/c2;

    .line 75
    .line 76
    invoke-direct {v2, p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/c2;-><init>(Lcom/google/android/gms/internal/clearcut/a3;Lcom/google/android/gms/internal/clearcut/j0;Lcom/google/android/gms/internal/clearcut/x1;)V

    .line 77
    .line 78
    .line 79
    return-object v2

    .line 80
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :cond_4
    const/4 v0, 0x0

    .line 87
    const/4 v1, 0x1

    .line 88
    const/4 v4, 0x0

    .line 89
    if-eqz p1, :cond_7

    .line 90
    .line 91
    invoke-interface {v2}, Lcom/google/android/gms/internal/clearcut/v1;->a()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-ne p1, v1, :cond_5

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_5
    const/4 v1, 0x0

    .line 99
    :goto_1
    if-eqz v1, :cond_6

    .line 100
    .line 101
    sget-object p1, Lcom/google/android/gms/internal/clearcut/g2;->b:Lcom/google/android/gms/internal/clearcut/f2;

    .line 102
    .line 103
    sget-object v0, Lcom/google/android/gms/internal/clearcut/k1;->b:Lcom/google/android/gms/internal/clearcut/m1;

    .line 104
    .line 105
    sget-object v1, Lcom/google/android/gms/internal/clearcut/q2;->d:Lcom/google/android/gms/internal/clearcut/c3;

    .line 106
    .line 107
    sget-object v3, Lcom/google/android/gms/internal/clearcut/m0;->a:Lcom/google/android/gms/internal/clearcut/k0;

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_6
    sget-object p1, Lcom/google/android/gms/internal/clearcut/g2;->b:Lcom/google/android/gms/internal/clearcut/f2;

    .line 111
    .line 112
    sget-object v1, Lcom/google/android/gms/internal/clearcut/k1;->b:Lcom/google/android/gms/internal/clearcut/m1;

    .line 113
    .line 114
    sget-object v3, Lcom/google/android/gms/internal/clearcut/q2;->d:Lcom/google/android/gms/internal/clearcut/c3;

    .line 115
    .line 116
    move-object v8, v3

    .line 117
    move-object v3, v0

    .line 118
    move-object v0, v1

    .line 119
    move-object v1, v8

    .line 120
    :goto_2
    sget-object v4, Lcom/google/android/gms/internal/clearcut/u1;->b:Lcom/google/android/gms/internal/clearcut/t1;

    .line 121
    .line 122
    move-object v5, v1

    .line 123
    move-object v6, v3

    .line 124
    move-object v7, v4

    .line 125
    goto :goto_5

    .line 126
    :cond_7
    invoke-interface {v2}, Lcom/google/android/gms/internal/clearcut/v1;->a()I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-ne p1, v1, :cond_8

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_8
    const/4 v1, 0x0

    .line 134
    :goto_3
    if-eqz v1, :cond_a

    .line 135
    .line 136
    sget-object p1, Lcom/google/android/gms/internal/clearcut/g2;->a:Lcom/google/android/gms/internal/clearcut/e2;

    .line 137
    .line 138
    sget-object v0, Lcom/google/android/gms/internal/clearcut/k1;->a:Lcom/google/android/gms/internal/clearcut/l1;

    .line 139
    .line 140
    sget-object v1, Lcom/google/android/gms/internal/clearcut/q2;->b:Lcom/google/android/gms/internal/clearcut/a3;

    .line 141
    .line 142
    sget-object v4, Lcom/google/android/gms/internal/clearcut/m0;->b:Lcom/google/android/gms/internal/clearcut/j0;

    .line 143
    .line 144
    if-eqz v4, :cond_9

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 148
    .line 149
    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p1

    .line 153
    :cond_a
    sget-object p1, Lcom/google/android/gms/internal/clearcut/g2;->a:Lcom/google/android/gms/internal/clearcut/e2;

    .line 154
    .line 155
    sget-object v1, Lcom/google/android/gms/internal/clearcut/k1;->a:Lcom/google/android/gms/internal/clearcut/l1;

    .line 156
    .line 157
    sget-object v3, Lcom/google/android/gms/internal/clearcut/q2;->c:Lcom/google/android/gms/internal/clearcut/a3;

    .line 158
    .line 159
    move-object v4, v0

    .line 160
    move-object v0, v1

    .line 161
    move-object v1, v3

    .line 162
    :goto_4
    sget-object v3, Lcom/google/android/gms/internal/clearcut/u1;->a:Lcom/google/android/gms/internal/clearcut/s1;

    .line 163
    .line 164
    move-object v5, v1

    .line 165
    move-object v7, v3

    .line 166
    move-object v6, v4

    .line 167
    :goto_5
    move-object v3, p1

    .line 168
    move-object v4, v0

    .line 169
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/clearcut/b2;->p(Lcom/google/android/gms/internal/clearcut/v1;Lcom/google/android/gms/internal/clearcut/e2;Lcom/google/android/gms/internal/clearcut/k1;Lcom/google/android/gms/internal/clearcut/a3;Lcom/google/android/gms/internal/clearcut/j0;Lcom/google/android/gms/internal/clearcut/s1;)Lcom/google/android/gms/internal/clearcut/b2;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    return-object p1
.end method
