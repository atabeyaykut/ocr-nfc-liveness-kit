.class public final Lh2/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/e;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk2/a;

.field public final synthetic b:Lh2/e;


# direct methods
.method public constructor <init>(Lh2/e;Lk2/a;)V
    .locals 0

    iput-object p1, p0, Lh2/e$a;->b:Lh2/e;

    iput-object p2, p0, Lh2/e$a;->a:Lk2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lh2/e$a;->b:Lh2/e;

    .line 2
    .line 3
    iget-object v0, v0, Lh2/e;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 4
    .line 5
    iget-object v1, p0, Lh2/e$a;->a:Lk2/a;

    .line 6
    .line 7
    iget v2, v0, Lcom/github/barteksc/pdfviewer/PDFView;->x:I

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    iput v2, v0, Lcom/github/barteksc/pdfviewer/PDFView;->x:I

    .line 14
    .line 15
    :cond_0
    iget-boolean v2, v1, Lk2/a;->e:Z

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/PDFView;->e:Lh2/b;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Lh2/b;->a(Lk2/a;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/PDFView;->e:Lh2/b;

    .line 26
    .line 27
    iget-object v3, v2, Lh2/b;->d:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v3

    .line 30
    :try_start_0
    invoke-virtual {v2}, Lh2/b;->c()V

    .line 31
    .line 32
    .line 33
    iget-object v2, v2, Lh2/b;->b:Ljava/util/PriorityQueue;

    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw v0
.end method
