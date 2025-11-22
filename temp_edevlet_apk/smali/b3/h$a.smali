.class public final Lb3/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb3/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lb3/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb3/h;

    invoke-direct {v0}, Lb3/h;-><init>()V

    sput-object v0, Lb3/h$a;->a:Lb3/h;

    return-void
.end method
