.class public final Lzf/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt8/a;


# instance fields
.field public final a:Lzf/d1;


# direct methods
.method public constructor <init>(Lzf/d1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzf/x1;->a:Lzf/d1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/editor/EditorServicesFragment;

    .line 2
    .line 3
    iget-object v0, p0, Lzf/x1;->a:Lzf/d1;

    .line 4
    .line 5
    invoke-static {v0}, Lzf/d1;->b(Lzf/d1;)Lgf/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/editor/EditorServicesFragment;->a:Lgf/b;

    .line 10
    .line 11
    return-void
.end method
