.class public final Lo5/c$a;
.super Ln5/f$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo5/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln5/f$b<",
        "Ln5/a;",
        "Lu5/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Ln5/a;

    invoke-direct {p0, v0}, Ln5/f$b;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lu5/d;

    .line 2
    .line 3
    new-instance v0, Lw5/m;

    .line 4
    .line 5
    new-instance v1, Lo5/d;

    .line 6
    .line 7
    invoke-direct {v1}, Lo5/d;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lu5/d;->w()Lu5/i;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-class v3, Lw5/q;

    .line 15
    .line 16
    invoke-virtual {v1, v2, v3}, Ln5/f;->b(Lcom/google/crypto/tink/shaded/protobuf/q0;Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lw5/q;

    .line 21
    .line 22
    new-instance v2, Ls5/b;

    .line 23
    .line 24
    invoke-direct {v2}, Ls5/b;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lu5/d;->x()Lu5/b0;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-class v4, Ln5/k;

    .line 32
    .line 33
    invoke-virtual {v2, v3, v4}, Ln5/f;->b(Lcom/google/crypto/tink/shaded/protobuf/q0;Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ln5/k;

    .line 38
    .line 39
    invoke-virtual {p1}, Lu5/d;->x()Lu5/b0;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lu5/b0;->y()Lu5/d0;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lu5/d0;->v()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-direct {v0, v1, v2, p1}, Lw5/m;-><init>(Lw5/q;Ln5/k;I)V

    .line 52
    .line 53
    .line 54
    return-object v0
.end method
