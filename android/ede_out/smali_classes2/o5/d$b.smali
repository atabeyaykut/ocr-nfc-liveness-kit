.class public final Lo5/d$b;
.super Ln5/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo5/d;->c()Ln5/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln5/f$a<",
        "Lu5/j;",
        "Lu5/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lo5/d;


# direct methods
.method public constructor <init>(Lo5/d;)V
    .locals 0

    iput-object p1, p0, Lo5/d$b;->b:Lo5/d;

    const-class p1, Lu5/j;

    invoke-direct {p0, p1}, Ln5/f$a;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/crypto/tink/shaded/protobuf/q0;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lu5/j;

    .line 2
    .line 3
    invoke-static {}, Lu5/i;->A()Lu5/i$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lu5/j;->v()Lu5/k;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 12
    .line 13
    .line 14
    iget-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 15
    .line 16
    check-cast v2, Lu5/i;

    .line 17
    .line 18
    invoke-static {v2, v1}, Lu5/i;->u(Lu5/i;Lu5/k;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lu5/j;->u()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-static {p1}, Lw5/v;->a(I)[B

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    array-length v1, p1

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-static {p1, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/i;->m([BII)Lcom/google/crypto/tink/shaded/protobuf/i$f;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 39
    .line 40
    check-cast v1, Lu5/i;

    .line 41
    .line 42
    invoke-static {v1, p1}, Lu5/i;->v(Lu5/i;Lcom/google/crypto/tink/shaded/protobuf/i$f;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lo5/d$b;->b:Lo5/d;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 51
    .line 52
    .line 53
    iget-object p1, v0, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 54
    .line 55
    check-cast p1, Lu5/i;

    .line 56
    .line 57
    invoke-static {p1}, Lu5/i;->t(Lu5/i;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->i()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lu5/i;

    .line 65
    .line 66
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

    invoke-static {p1, v0}, Lu5/j;->w(Lcom/google/crypto/tink/shaded/protobuf/i;Lcom/google/crypto/tink/shaded/protobuf/p;)Lu5/j;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/google/crypto/tink/shaded/protobuf/q0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lu5/j;

    .line 2
    .line 3
    invoke-virtual {p1}, Lu5/j;->u()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lw5/a0;->a(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lu5/j;->v()Lu5/k;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Lo5/d$b;->b:Lo5/d;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lu5/k;->u()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/16 v1, 0xc

    .line 24
    .line 25
    if-lt v0, v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Lu5/k;->u()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/16 v0, 0x10

    .line 32
    .line 33
    if-gt p1, v0, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 37
    .line 38
    const-string v0, "invalid IV size"

    .line 39
    .line 40
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method
