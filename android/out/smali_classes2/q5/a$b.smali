.class public final Lq5/a$b;
.super Ln5/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq5/a;->c()Ln5/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln5/f$a<",
        "Lu5/w;",
        "Lu5/v;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lq5/a;


# direct methods
.method public constructor <init>(Lq5/a;)V
    .locals 0

    iput-object p1, p0, Lq5/a$b;->b:Lq5/a;

    const-class p1, Lu5/w;

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
    check-cast p1, Lu5/w;

    .line 2
    .line 3
    invoke-static {}, Lu5/v;->x()Lu5/v$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lu5/w;->u()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {p1}, Lw5/v;->a(I)[B

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    array-length v1, p1

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {p1, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/i;->m([BII)Lcom/google/crypto/tink/shaded/protobuf/i$f;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 25
    .line 26
    check-cast v1, Lu5/v;

    .line 27
    .line 28
    invoke-static {v1, p1}, Lu5/v;->u(Lu5/v;Lcom/google/crypto/tink/shaded/protobuf/i$f;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lq5/a$b;->b:Lq5/a;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 37
    .line 38
    .line 39
    iget-object p1, v0, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 40
    .line 41
    check-cast p1, Lu5/v;

    .line 42
    .line 43
    invoke-static {p1}, Lu5/v;->t(Lu5/v;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->i()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lu5/v;

    .line 51
    .line 52
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

    invoke-static {p1, v0}, Lu5/w;->w(Lcom/google/crypto/tink/shaded/protobuf/i;Lcom/google/crypto/tink/shaded/protobuf/p;)Lu5/w;

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
    check-cast p1, Lu5/w;

    .line 2
    .line 3
    invoke-virtual {p1}, Lu5/w;->u()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x40

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "invalid key size: "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lu5/w;->u()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, ". Valid keys must have 64 bytes."

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method
