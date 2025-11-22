.class public final Lrc/c0;
.super Lrc/d0;
.source "SourceFile"


# instance fields
.field public final synthetic b:Led/g;

.field public final synthetic c:Lrc/t;

.field public final synthetic d:J


# direct methods
.method public constructor <init>(Lrc/t;JLed/e;)V
    .locals 0

    iput-object p4, p0, Lrc/c0;->b:Led/g;

    iput-object p1, p0, Lrc/c0;->c:Lrc/t;

    iput-wide p2, p0, Lrc/c0;->d:J

    invoke-direct {p0}, Lrc/d0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lrc/c0;->d:J

    return-wide v0
.end method

.method public final b()Lrc/t;
    .locals 1

    iget-object v0, p0, Lrc/c0;->c:Lrc/t;

    return-object v0
.end method

.method public final c()Led/g;
    .locals 1

    iget-object v0, p0, Lrc/c0;->b:Led/g;

    return-object v0
.end method
