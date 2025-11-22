.class public final Lyc/f$f;
.super Luc/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyc/f;->k(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lyc/f;

.field public final synthetic f:I

.field public final synthetic g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lyc/f;IJ)V
    .locals 0

    iput-object p2, p0, Lyc/f$f;->e:Lyc/f;

    iput p3, p0, Lyc/f$f;->f:I

    iput-wide p4, p0, Lyc/f$f;->g:J

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Luc/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 5

    .line 1
    iget-object v0, p0, Lyc/f$f;->e:Lyc/f;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, v0, Lyc/f;->B:Lyc/s;

    .line 4
    .line 5
    iget v2, p0, Lyc/f$f;->f:I

    .line 6
    .line 7
    iget-wide v3, p0, Lyc/f$f;->g:J

    .line 8
    .line 9
    invoke-virtual {v1, v2, v3, v4}, Lyc/s;->j(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v1

    .line 14
    invoke-virtual {v0, v1}, Lyc/f;->b(Ljava/io/IOException;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    const-wide/16 v0, -0x1

    .line 18
    .line 19
    return-wide v0
.end method
