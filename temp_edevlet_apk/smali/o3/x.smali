.class public final Lo3/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lo3/a0;


# direct methods
.method public constructor <init>(Lo3/a0;I)V
    .locals 0

    iput-object p1, p0, Lo3/x;->b:Lo3/a0;

    iput p2, p0, Lo3/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo3/x;->b:Lo3/a0;

    iget v1, p0, Lo3/x;->a:I

    invoke-virtual {v0, v1}, Lo3/a0;->f(I)V

    return-void
.end method
