.class public final Ld0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ld0/r<",
        "Ld0/f;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/InputStream;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/ByteArrayInputStream;)V
    .locals 0

    iput-object p1, p0, Ld0/k;->a:Ljava/io/InputStream;

    const/4 p1, 0x0

    iput-object p1, p0, Ld0/k;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Ld0/k;->a:Ljava/io/InputStream;

    iget-object v1, p0, Ld0/k;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ld0/g;->c(Ljava/io/InputStream;Ljava/lang/String;)Ld0/r;

    move-result-object v0

    return-object v0
.end method
