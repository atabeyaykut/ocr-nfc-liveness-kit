.class public final Lud/u$b;
.super Lrc/d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lud/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Lrc/d0;

.field public final c:Led/d0;

.field public d:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Lrc/d0;)V
    .locals 1

    invoke-direct {p0}, Lrc/d0;-><init>()V

    iput-object p1, p0, Lud/u$b;->b:Lrc/d0;

    new-instance v0, Lud/u$b$a;

    invoke-virtual {p1}, Lrc/d0;->c()Led/g;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lud/u$b$a;-><init>(Lud/u$b;Led/g;)V

    invoke-static {v0}, Led/v;->b(Led/j0;)Led/d0;

    move-result-object p1

    iput-object p1, p0, Lud/u$b;->c:Led/d0;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object v0, p0, Lud/u$b;->b:Lrc/d0;

    invoke-virtual {v0}, Lrc/d0;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()Lrc/t;
    .locals 1

    iget-object v0, p0, Lud/u$b;->b:Lrc/d0;

    invoke-virtual {v0}, Lrc/d0;->b()Lrc/t;

    move-result-object v0

    return-object v0
.end method

.method public final c()Led/g;
    .locals 1

    iget-object v0, p0, Lud/u$b;->c:Led/d0;

    return-object v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lud/u$b;->b:Lrc/d0;

    invoke-virtual {v0}, Lrc/d0;->close()V

    return-void
.end method
