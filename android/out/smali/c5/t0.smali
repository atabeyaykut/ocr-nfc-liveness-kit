.class public final Lc5/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lc5/u1;


# direct methods
.method public constructor <init>(Lc5/u1;J)V
    .locals 0

    iput-object p1, p0, Lc5/t0;->b:Lc5/u1;

    iput-wide p2, p0, Lc5/t0;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lc5/t0;->b:Lc5/u1;

    iget-wide v1, p0, Lc5/t0;->a:J

    invoke-virtual {v0, v1, v2}, Lc5/u1;->n(J)V

    return-void
.end method
