.class public final Lyb/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyb/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyb/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lyb/y$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyb/y$a;

    invoke-direct {v0}, Lyb/y$a;-><init>()V

    sput-object v0, Lyb/y$a;->a:Lyb/y$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method
