.class public final Lr4/m6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static i:Lr4/y6;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lr4/l6;

.field public final d:Lv7/l;

.field public final e:Lh5/z;

.field public final f:Lh5/z;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lv7/l;Lr4/j6;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lr4/m6;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lr4/m6;->a:Ljava/lang/String;

    invoke-static {p1}, Lv7/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lr4/m6;->b:Ljava/lang/String;

    iput-object p2, p0, Lr4/m6;->d:Lv7/l;

    iput-object p3, p0, Lr4/m6;->c:Lr4/l6;

    iput-object p4, p0, Lr4/m6;->g:Ljava/lang/String;

    invoke-static {}, Lv7/g;->a()Lv7/g;

    move-result-object p1

    new-instance p3, Lo4/l;

    const/4 v0, 0x1

    invoke-direct {p3, p4, v0}, Lo4/l;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lv7/g;->b(Ljava/util/concurrent/Callable;)Lh5/z;

    move-result-object p1

    iput-object p1, p0, Lr4/m6;->e:Lh5/z;

    invoke-static {}, Lv7/g;->a()Lv7/g;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lo4/k;

    invoke-direct {p3, p2, v0}, Lo4/k;-><init>(Lv7/l;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lv7/g;->b(Ljava/util/concurrent/Callable;)Lh5/z;

    move-result-object p1

    iput-object p1, p0, Lr4/m6;->f:Lh5/z;

    return-void
.end method
