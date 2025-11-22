.class public final Lo5/c$b;
.super Ln5/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo5/c;->c()Ln5/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln5/f$a<",
        "Lu5/e;",
        "Lu5/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lo5/c;


# direct methods
.method public constructor <init>(Lo5/c;)V
    .locals 0

    iput-object p1, p0, Lo5/c$b;->b:Lo5/c;

    const-class p1, Lu5/e;

    invoke-direct {p0, p1}, Ln5/f$a;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/crypto/tink/shaded/protobuf/q0;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lu5/e;

    .line 2
    .line 3
    new-instance v0, Lo5/d;

    .line 4
    .line 5
    invoke-direct {v0}, Lo5/d;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lu5/e;->t()Lu5/j;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {}, Lu5/i;->A()Lu5/i$a;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lu5/j;->v()Lu5/k;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 21
    .line 22
    .line 23
    iget-object v3, v1, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 24
    .line 25
    check-cast v3, Lu5/i;

    .line 26
    .line 27
    invoke-static {v3, v2}, Lu5/i;->u(Lu5/i;Lu5/k;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lu5/j;->u()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-static {v0}, Lw5/v;->a(I)[B

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    array-length v2, v0

    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-static {v0, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->m([BII)Lcom/google/crypto/tink/shaded/protobuf/i$f;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 45
    .line 46
    .line 47
    iget-object v2, v1, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 48
    .line 49
    check-cast v2, Lu5/i;

    .line 50
    .line 51
    invoke-static {v2, v0}, Lu5/i;->v(Lu5/i;Lcom/google/crypto/tink/shaded/protobuf/i$f;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 55
    .line 56
    .line 57
    iget-object v0, v1, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 58
    .line 59
    check-cast v0, Lu5/i;

    .line 60
    .line 61
    invoke-static {v0}, Lu5/i;->t(Lu5/i;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->i()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lu5/i;

    .line 69
    .line 70
    new-instance v1, Ls5/b;

    .line 71
    .line 72
    invoke-direct {v1}, Ls5/b;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lu5/e;->u()Lu5/c0;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {}, Lu5/b0;->A()Lu5/b0$a;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 84
    .line 85
    .line 86
    iget-object v2, v1, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 87
    .line 88
    check-cast v2, Lu5/b0;

    .line 89
    .line 90
    invoke-static {v2}, Lu5/b0;->t(Lu5/b0;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lu5/c0;->v()Lu5/d0;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 98
    .line 99
    .line 100
    iget-object v4, v1, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 101
    .line 102
    check-cast v4, Lu5/b0;

    .line 103
    .line 104
    invoke-static {v4, v2}, Lu5/b0;->u(Lu5/b0;Lu5/d0;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lu5/c0;->u()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    invoke-static {p1}, Lw5/v;->a(I)[B

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    array-length v2, p1

    .line 116
    invoke-static {p1, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->m([BII)Lcom/google/crypto/tink/shaded/protobuf/i$f;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 121
    .line 122
    .line 123
    iget-object v2, v1, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 124
    .line 125
    check-cast v2, Lu5/b0;

    .line 126
    .line 127
    invoke-static {v2, p1}, Lu5/b0;->v(Lu5/b0;Lcom/google/crypto/tink/shaded/protobuf/i$f;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->i()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Lu5/b0;

    .line 135
    .line 136
    invoke-static {}, Lu5/d;->z()Lu5/d$a;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 141
    .line 142
    .line 143
    iget-object v2, v1, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 144
    .line 145
    check-cast v2, Lu5/d;

    .line 146
    .line 147
    invoke-static {v2, v0}, Lu5/d;->u(Lu5/d;Lu5/i;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 151
    .line 152
    .line 153
    iget-object v0, v1, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 154
    .line 155
    check-cast v0, Lu5/d;

    .line 156
    .line 157
    invoke-static {v0, p1}, Lu5/d;->v(Lu5/d;Lu5/b0;)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lo5/c$b;->b:Lo5/c;

    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 166
    .line 167
    .line 168
    iget-object p1, v1, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 169
    .line 170
    check-cast p1, Lu5/d;

    .line 171
    .line 172
    invoke-static {p1}, Lu5/d;->t(Lu5/d;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->i()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    check-cast p1, Lu5/d;

    .line 180
    .line 181
    return-object p1
.end method

.method public final b(Lcom/google/crypto/tink/shaded/protobuf/i;)Lcom/google/crypto/tink/shaded/protobuf/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/a0;
        }
    .end annotation

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/p;->a()Lcom/google/crypto/tink/shaded/protobuf/p;

    move-result-object v0

    invoke-static {p1, v0}, Lu5/e;->v(Lcom/google/crypto/tink/shaded/protobuf/i;Lcom/google/crypto/tink/shaded/protobuf/p;)Lu5/e;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/google/crypto/tink/shaded/protobuf/q0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lu5/e;

    .line 2
    .line 3
    new-instance v0, Lo5/d;

    .line 4
    .line 5
    invoke-direct {v0}, Lo5/d;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lu5/e;->t()Lu5/j;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lu5/j;->u()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v1}, Lw5/a0;->a(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lu5/j;->v()Lu5/k;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lu5/k;->u()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/16 v2, 0xc

    .line 28
    .line 29
    if-lt v1, v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lu5/k;->u()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/16 v1, 0x10

    .line 36
    .line 37
    if-gt v0, v1, :cond_1

    .line 38
    .line 39
    new-instance v0, Ls5/b;

    .line 40
    .line 41
    invoke-direct {v0}, Ls5/b;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lu5/e;->u()Lu5/c0;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lu5/c0;->u()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-lt v2, v1, :cond_0

    .line 53
    .line 54
    invoke-virtual {v0}, Lu5/c0;->v()Lu5/d0;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Ls5/b;->h(Lu5/d0;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lu5/e;->t()Lu5/j;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lu5/j;->u()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-static {p1}, Lw5/a0;->a(I)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 74
    .line 75
    const-string v0, "key too short"

    .line 76
    .line 77
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p1

    .line 81
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 82
    .line 83
    const-string v0, "invalid IV size"

    .line 84
    .line 85
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1
.end method
