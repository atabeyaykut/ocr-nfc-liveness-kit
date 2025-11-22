.class public final Lfd/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Led/z;

.field public final b:Z

.field public final c:J

.field public final d:J

.field public final e:I

.field public final f:Ljava/lang/Long;

.field public final g:J

.field public final h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Led/z;ZLjava/lang/String;JJILjava/lang/Long;J)V
    .locals 1

    const-string v0, "comment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfd/f;->a:Led/z;

    iput-boolean p2, p0, Lfd/f;->b:Z

    iput-wide p4, p0, Lfd/f;->c:J

    iput-wide p6, p0, Lfd/f;->d:J

    iput p8, p0, Lfd/f;->e:I

    iput-object p9, p0, Lfd/f;->f:Ljava/lang/Long;

    iput-wide p10, p0, Lfd/f;->g:J

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lfd/f;->h:Ljava/util/ArrayList;

    return-void
.end method
