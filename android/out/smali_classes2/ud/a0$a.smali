.class public final Lud/a0$a;
.super Lrc/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lud/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Lrc/a0;

.field public final c:Lrc/t;


# direct methods
.method public constructor <init>(Lrc/a0;Lrc/t;)V
    .locals 0

    invoke-direct {p0}, Lrc/a0;-><init>()V

    iput-object p1, p0, Lud/a0$a;->b:Lrc/a0;

    iput-object p2, p0, Lud/a0$a;->c:Lrc/t;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lud/a0$a;->b:Lrc/a0;

    invoke-virtual {v0}, Lrc/a0;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()Lrc/t;
    .locals 1

    iget-object v0, p0, Lud/a0$a;->c:Lrc/t;

    return-object v0
.end method

.method public final c(Led/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lud/a0$a;->b:Lrc/a0;

    invoke-virtual {v0, p1}, Lrc/a0;->c(Led/f;)V

    return-void
.end method
