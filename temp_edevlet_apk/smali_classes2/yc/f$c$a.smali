.class public final Lyc/f$c$a;
.super Lyc/f$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyc/f$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyc/f$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lyc/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lyc/b;->f:Lyc/b;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lyc/r;->c(Lyc/b;Ljava/io/IOException;)V

    return-void
.end method
