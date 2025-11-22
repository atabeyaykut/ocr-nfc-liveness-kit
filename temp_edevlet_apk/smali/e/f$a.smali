.class public final Le/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lp/a;

.field public final c:Lu/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Le/f$a;->a:Landroid/content/Context;

    .line 9
    .line 10
    sget-object p1, Lu/b;->a:Lp/a;

    .line 11
    .line 12
    iput-object p1, p0, Le/f$a;->b:Lp/a;

    .line 13
    .line 14
    new-instance p1, Lu/h;

    .line 15
    .line 16
    invoke-direct {p1}, Lu/h;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Le/f$a;->c:Lu/h;

    .line 20
    .line 21
    return-void
.end method
