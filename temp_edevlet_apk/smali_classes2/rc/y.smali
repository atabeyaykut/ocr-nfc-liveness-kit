.class public final Lrc/y;
.super Lrc/a0;
.source "SourceFile"


# instance fields
.field public final synthetic b:Led/h;

.field public final synthetic c:Lrc/t;


# direct methods
.method public constructor <init>(Lrc/t;Led/h;)V
    .locals 0

    iput-object p2, p0, Lrc/y;->b:Led/h;

    iput-object p1, p0, Lrc/y;->c:Lrc/t;

    invoke-direct {p0}, Lrc/a0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object v0, p0, Lrc/y;->b:Led/h;

    invoke-virtual {v0}, Led/h;->r()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final b()Lrc/t;
    .locals 1

    iget-object v0, p0, Lrc/y;->c:Lrc/t;

    return-object v0
.end method

.method public final c(Led/f;)V
    .locals 1

    iget-object v0, p0, Lrc/y;->b:Led/h;

    invoke-interface {p1, v0}, Led/f;->C(Led/h;)Led/f;

    return-void
.end method
