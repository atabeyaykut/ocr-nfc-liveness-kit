.class public final Ls5/a$b;
.super Ln5/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls5/a;->c()Ln5/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln5/f$a<",
        "Lu5/b;",
        "Lu5/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Lu5/b;

    invoke-direct {p0, v0}, Ln5/f$a;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/crypto/tink/shaded/protobuf/q0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lu5/b;

    .line 2
    .line 3
    invoke-static {}, Lu5/a;->z()Lu5/a$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 11
    .line 12
    check-cast v1, Lu5/a;

    .line 13
    .line 14
    invoke-static {v1}, Lu5/a;->t(Lu5/a;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lu5/b;->t()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {v1}, Lw5/v;->a(I)[B

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    array-length v2, v1

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static {v1, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->m([BII)Lcom/google/crypto/tink/shaded/protobuf/i$f;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 32
    .line 33
    .line 34
    iget-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 35
    .line 36
    check-cast v2, Lu5/a;

    .line 37
    .line 38
    invoke-static {v2, v1}, Lu5/a;->u(Lu5/a;Lcom/google/crypto/tink/shaded/protobuf/i$f;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lu5/b;->u()Lu5/c;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 49
    .line 50
    check-cast v1, Lu5/a;

    .line 51
    .line 52
    invoke-static {v1, p1}, Lu5/a;->v(Lu5/a;Lu5/c;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->i()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lu5/a;

    .line 60
    .line 61
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

    invoke-static {p1, v0}, Lu5/b;->v(Lcom/google/crypto/tink/shaded/protobuf/i;Lcom/google/crypto/tink/shaded/protobuf/p;)Lu5/b;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/google/crypto/tink/shaded/protobuf/q0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lu5/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Lu5/b;->u()Lu5/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ls5/a;->g(Lu5/c;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lu5/b;->t()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/16 v0, 0x20

    .line 15
    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 20
    .line 21
    const-string v0, "AesCmacKey size wrong, must be 32 bytes"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method
