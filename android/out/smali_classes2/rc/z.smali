.class public final Lrc/z;
.super Lrc/a0;
.source "SourceFile"


# instance fields
.field public final synthetic b:[B

.field public final synthetic c:Lrc/t;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Lrc/t;[BII)V
    .locals 0

    iput-object p2, p0, Lrc/z;->b:[B

    iput-object p1, p0, Lrc/z;->c:Lrc/t;

    iput p3, p0, Lrc/z;->d:I

    iput p4, p0, Lrc/z;->e:I

    invoke-direct {p0}, Lrc/a0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget v0, p0, Lrc/z;->d:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final b()Lrc/t;
    .locals 1

    iget-object v0, p0, Lrc/z;->c:Lrc/t;

    return-object v0
.end method

.method public final c(Led/f;)V
    .locals 3

    iget v0, p0, Lrc/z;->d:I

    iget-object v1, p0, Lrc/z;->b:[B

    iget v2, p0, Lrc/z;->e:I

    invoke-interface {p1, v1, v2, v0}, Led/f;->write([BII)Led/f;

    return-void
.end method
