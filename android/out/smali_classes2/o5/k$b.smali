.class public final Lo5/k$b;
.super Ln5/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo5/k;->c()Ln5/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln5/f$a<",
        "Lu5/n0;",
        "Lu5/m0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lo5/k;


# direct methods
.method public constructor <init>(Lo5/k;)V
    .locals 0

    iput-object p1, p0, Lo5/k$b;->b:Lo5/k;

    const-class p1, Lu5/n0;

    invoke-direct {p0, p1}, Ln5/f$a;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/crypto/tink/shaded/protobuf/q0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lu5/n0;

    .line 2
    .line 3
    invoke-static {}, Lu5/m0;->x()Lu5/m0$a;

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
    check-cast v1, Lu5/m0;

    .line 13
    .line 14
    invoke-static {v1, p1}, Lu5/m0;->u(Lu5/m0;Lu5/n0;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lo5/k$b;->b:Lo5/k;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 23
    .line 24
    .line 25
    iget-object p1, v0, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 26
    .line 27
    check-cast p1, Lu5/m0;

    .line 28
    .line 29
    invoke-static {p1}, Lu5/m0;->t(Lu5/m0;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->i()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lu5/m0;

    .line 37
    .line 38
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

    invoke-static {p1, v0}, Lu5/n0;->w(Lcom/google/crypto/tink/shaded/protobuf/i;Lcom/google/crypto/tink/shaded/protobuf/p;)Lu5/n0;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic c(Lcom/google/crypto/tink/shaded/protobuf/q0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    check-cast p1, Lu5/n0;

    return-void
.end method
