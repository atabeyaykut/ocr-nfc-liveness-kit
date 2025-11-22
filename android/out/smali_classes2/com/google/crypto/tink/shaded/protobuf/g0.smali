.class public abstract Lcom/google/crypto/tink/shaded/protobuf/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/g0$b;,
        Lcom/google/crypto/tink/shaded/protobuf/g0$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/crypto/tink/shaded/protobuf/g0$a;

.field public static final b:Lcom/google/crypto/tink/shaded/protobuf/g0$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/g0$a;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/g0$a;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/g0;->a:Lcom/google/crypto/tink/shaded/protobuf/g0$a;

    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/g0$b;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/g0$b;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/g0;->b:Lcom/google/crypto/tink/shaded/protobuf/g0$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(JLjava/lang/Object;)V
.end method

.method public abstract b(JLjava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract c(JLjava/lang/Object;)Ljava/util/List;
.end method
