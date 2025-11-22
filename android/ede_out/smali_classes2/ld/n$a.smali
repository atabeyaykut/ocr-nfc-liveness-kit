.class public final Lld/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lld/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:[B

.field public c:I

.field public d:[B

.field public e:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lld/n$a;->a:Ljava/lang/Long;

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lld/n$a;->b:[B

    return-void
.end method
