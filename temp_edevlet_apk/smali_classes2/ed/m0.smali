.class public final Led/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Led/h;->d:Led/h;

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-static {v0}, Led/h$a;->b(Ljava/lang/String;)Led/h;

    move-result-object v0

    iget-object v0, v0, Led/h;->a:[B

    sput-object v0, Led/m0;->a:[B

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-static {v0}, Led/h$a;->b(Ljava/lang/String;)Led/h;

    return-void
.end method
