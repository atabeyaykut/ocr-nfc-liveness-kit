.class public final Lud/u$c;
.super Lrc/d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lud/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final b:Lrc/t;

.field public final c:J


# direct methods
.method public constructor <init>(Lrc/t;J)V
    .locals 0

    invoke-direct {p0}, Lrc/d0;-><init>()V

    iput-object p1, p0, Lud/u$c;->b:Lrc/t;

    iput-wide p2, p0, Lud/u$c;->c:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lud/u$c;->c:J

    return-wide v0
.end method

.method public final b()Lrc/t;
    .locals 1

    iget-object v0, p0, Lud/u$c;->b:Lrc/t;

    return-object v0
.end method

.method public final c()Led/g;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read raw response body of a converted body."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
