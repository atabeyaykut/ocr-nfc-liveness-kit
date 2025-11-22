.class public final Lcom/google/crypto/tink/shaded/protobuf/h;
.super Lcom/google/crypto/tink/shaded/protobuf/i$a;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:I

.field public final synthetic c:Lcom/google/crypto/tink/shaded/protobuf/i;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/i;)V
    .locals 1

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/h;->c:Lcom/google/crypto/tink/shaded/protobuf/i;

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/i$a;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/h;->a:I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->size()I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/h;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/h;->a:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/h;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
