.class public final Lud/u$b$a;
.super Led/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lud/u$b;-><init>(Lrc/d0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lud/u$b;


# direct methods
.method public constructor <init>(Lud/u$b;Led/g;)V
    .locals 0

    iput-object p1, p0, Lud/u$b$a;->b:Lud/u$b;

    invoke-direct {p0, p2}, Led/n;-><init>(Led/j0;)V

    return-void
.end method


# virtual methods
.method public final w(Led/e;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Led/n;->w(Led/e;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lud/u$b$a;->b:Lud/u$b;

    iput-object p1, p2, Lud/u$b;->d:Ljava/io/IOException;

    throw p1
.end method
